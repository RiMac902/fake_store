import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart' as auth;
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/feature/shop/presentation/widgets/cart_card.dart';
import 'package:fake_store/feature/shop/presentation/widgets/checkout_bar.dart';
import 'package:fake_store/feature/shop/presentation/widgets/shop_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartEntity? _currentCart;
  List<ProductEntity>? _products;

  @override
  void initState() {
    super.initState();
    context.read<ShopBloc>()
      ..add(const ShopEvent.getCarts())
      ..add(const ShopEvent.getProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ShopAppBar.standard(
        onLogout: () {
          context.read<auth.AuthBloc>().add(const auth.AuthEvent.signOut());
        },
        pageTitle: 'Cart',
      ),
      body: BlocConsumer<ShopBloc, ShopState>(
        listenWhen: (previous, current) => 
          current is CartUpdated || 
          current is CartRemoved || 
          current is Error,
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is CartRemoved) {
            setState(() {
              _currentCart = null;
            });
          } else if (state is CartUpdated) {
            setState(() {
              _currentCart = state.cart;
            });
          }
        },
        buildWhen: (previous, current) => 
          current is ProductsLoaded || 
          current is CartsLoaded ||
          current is CartLoaded ||
          current is CartUpdated || 
          current is CartRemoved,
        builder: (context, state) {
          if (state is Initial) return const SizedBox();
          if (state is Loading) return const Center(child: CircularProgressIndicator());
          if (state is Error) return Center(child: Text(state.message));
          
          if (state is CartLoaded) {
            _currentCart = state.cart;
          } else if (state is CartsLoaded && state.carts.isNotEmpty) {
            _currentCart = state.carts.firstWhere(
              (cart) => cart.userId == 1,
              orElse: () => state.carts.first,
            );
          }

          if (state is ProductsLoaded) {
            _products = state.products;
          }

          if (_currentCart != null && _products != null) {
            return _CartContent(
              cart: _currentCart!,
              products: _products!,
            );
          }

          if (_currentCart == null) {
            return const Center(child: Text('No cart found'));
          }

          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Loading products...'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CartContent extends StatelessWidget {
  final CartEntity cart;
  final List<ProductEntity> products;

  const _CartContent({
    required this.cart,
    required this.products,
  });

  void _removeFromCart(BuildContext context, String id) {
    context.read<ShopBloc>()
      ..add(ShopEvent.removeFromCart(id))
      ..add(const ShopEvent.getCarts());
  }

  void _updateQuantity(BuildContext context, int productId, int quantity) {
    context.read<ShopBloc>().add(ShopEvent.updateCartQuantity(productId, quantity));
  }

  double _calculateTotal() {
    return cart.products.fold(
      0,
      (total, cartProduct) {
        final product = products.firstWhere(
          (p) => p.id == cartProduct.productId,
          orElse: () => ProductEntity(
            id: cartProduct.productId,
            title: '',
            price: 0,
            description: '',
            category: '',
            image: '',
            rating: const RatingEntity(rate: 0, count: 0),
          ),
        );
        return total + (product.price * cartProduct.quantity);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (cart.products.isEmpty) {
      return const Center(
        child: Text('Your cart is empty'),
      );
    }

    return BlocConsumer<ShopBloc, ShopState>(
      listenWhen: (previous, current) => current is Error,
      listener: (context, state) {
        if (state is Error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      buildWhen: (previous, current) => false,
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(16.w),
                itemCount: cart.products.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) {
                  final cartProduct = cart.products[index];
                  final product = products.firstWhere(
                    (p) => p.id == cartProduct.productId,
                    orElse: () => ProductEntity(
                      id: cartProduct.productId,
                      title: 'Loading...',
                      price: 0,
                      description: '',
                      category: '',
                      image: '',
                      rating: const RatingEntity(rate: 0, count: 0),
                    ),
                  );

                  return CartCard(
                    key: ValueKey('${product.id}_${cartProduct.quantity}'),
                    title: product.title,
                    image: product.image,
                    price: product.price.toString(),
                    quantity: cartProduct.quantity,
                    onDelete: () => _removeFromCart(context, product.id.toString()),
                    onIncrease: () => _updateQuantity(
                      context,
                      product.id,
                      cartProduct.quantity + 1,
                    ),
                    onDecrease: () => _updateQuantity(
                      context,
                      product.id,
                      cartProduct.quantity - 1,
                    ),
                  );
                },
              ),
            ),
            CheckoutBar(
              total: _calculateTotal().toStringAsFixed(2),
              onCheckout: () {
                // TODO: Implement checkout
              },
            ),
          ],
        );
      },
    );
  }
}
