import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/feature/shop/presentation/widgets/shop_appbar.dart';
import 'package:fake_store/feature/shop/presentation/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ShopAppBar.standard(
        onLogout: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
        },
        pageTitle: 'Wishlist',
      ),
      body: BlocBuilder<ShopBloc, ShopState>(
        builder: (context, state) {
          if (state.wishlistError != null) {
            return Center(child: AppText.title3('Error: ${state.wishlistError}'));
          }
          if (state.wishlist.isEmpty) {
            return Center(child: AppText.title3('Your wishlist is empty'));
          }
          return ListView.separated(
            padding: EdgeInsets.all(16.w),
            itemCount: state.wishlist.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              final productUi = state.wishlist[index];
              return WishlistCard(
                title: productUi.product.title,
                image: productUi.product.image,
                price: productUi.product.price.toString(),
                onAddToCart: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product added to cart'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                onRemove: () {
                  context.read<ShopBloc>().add(RemoveFromWishlist(productUi.product.id.toString()));
                },
              );
            },
          );
        },
      ),
    );
  }
}