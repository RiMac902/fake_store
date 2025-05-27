import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fake_store/feature/shop/presentation/widgets/cart_card.dart';
import 'package:fake_store/feature/shop/presentation/widgets/checkout_bar.dart';
import 'package:fake_store/feature/shop/presentation/widgets/shop_appbar.dart';
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ShopAppBar.standard(
        onLogout: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
        },
        pageTitle: 'Cart',
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          final cart = state.cart;
          final total = cart.fold<double>(
            0,
            (sum, item) => sum + item.product.product.price * item.quantity,
          );

          if (cart.isEmpty) {
            return const Center(child: Text('Your cart is empty'));
          }

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.all(16.w),
                  itemCount: cart.length,
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final item = cart[index];
                    return CartCard(
                      key: ValueKey(item.product.product.id),
                      title: item.product.product.title,
                      image: item.product.product.image,
                      price: item.product.product.price.toStringAsFixed(2),
                      quantity: item.quantity,
                      onDelete: () {
                        context.read<ShopBloc>().add(
                          ShopEvent.removeFromCart(item.product.product.id.toString()),
                        );
                      },
                      onIncrease: () {
                        context.read<ShopBloc>().add(
                          ShopEvent.increaseCartQuantity(item.product.product.id.toString()),
                        );
                      },
                      onDecrease: () {
                        context.read<ShopBloc>().add(
                          ShopEvent.decreaseCartQuantity(item.product.product.id.toString()),
                        );
                      },
                    );
                  },
                ),
              ),
              CheckoutBar(
                total: total.toStringAsFixed(2),
                onCheckout: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Checkout is not implemented'),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
