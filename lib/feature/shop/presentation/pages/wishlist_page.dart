import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart' as auth;
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:fake_store/feature/shop/domain/usecases/add_to_cart_usecase.dart';
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/feature/shop/presentation/widgets/shop_appbar.dart';
import 'package:fake_store/feature/shop/presentation/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  void initState() {
    super.initState();
    context.read<ShopBloc>().add(const ShopEvent.getWishlist());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ShopAppBar.standard(
        onLogout: () {
          context.read<auth.AuthBloc>().add(const auth.AuthEvent.signOut());
        },
        pageTitle: 'Wishlist',
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          if (state is Loading) return const Center(child: CircularProgressIndicator());
          if (state is WishlistLoaded) return _WishlistContent(products: state.products);
          if (state is Error) return Center(child: Text(state.message));
          return const SizedBox();
        },
      ),
    );
  }
}

class _WishlistContent extends StatelessWidget {
  final List<ProductEntity> products;

  const _WishlistContent({required this.products});

  void _addToCart(BuildContext context, ProductEntity product) {
    final params = AddToCartParams(
      userId: 1,
      date: DateTime.now().toIso8601String(),
      products: [
        CartProductEntity(
          productId: product.id,
          quantity: 1,
        ),
      ],
    );
    context.read<ShopBloc>().add(ShopEvent.addToCart(params));
  }

  void _removeFromWishlist(BuildContext context, String id) {
    context.read<ShopBloc>().add(ShopEvent.removeFromWishlist(id));
  }

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return Center(
        child: AppText.title3('Your wishlist is empty'),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.all(16.w),
      itemCount: products.length,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        final product = products[index];
        return WishlistCard(
          title: product.title,
          image: product.image,
          price: product.price.toString(),
          onAddToCart: () => _addToCart(context, product),
          onRemove: () => _removeFromWishlist(context, product.id.toString()),
        );
      },
    );
  }
}