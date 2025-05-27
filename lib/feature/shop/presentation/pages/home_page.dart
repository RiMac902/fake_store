import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/feature/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:fake_store/feature/shop/presentation/widgets/product_card.dart';
import 'package:fake_store/feature/shop/presentation/widgets/shop_appbar.dart';
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ShopAppBar.main(
        height: 80.h,
        username: 'JohnD',
        onLogout: () {
          context.read<AuthBloc>().add(const AuthEvent.signOut());
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.title3('Fake Store'),
            SizedBox(height: 24.h),
            Expanded(
              child: BlocBuilder<ShopBloc, ShopState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state.productsError != null) {
                    return Center(child: AppText.title3(state.productsError!));
                  }
                  if (state.products.isEmpty) {
                    return  Center(child: AppText.title3('No products available'));
                  }
                  return ListView.separated(
                    itemCount: state.products.length,
                    separatorBuilder: (_, __) => SizedBox(height: 16.h),
                    itemBuilder: (context, index) {
                      final productUi = state.products[index];
                      return ProductCard(
                        id: productUi.product.id.toString(),
                        title: productUi.product.title,
                        image: productUi.product.image,
                        price: productUi.product.price.toString(),
                        description: productUi.product.description,
                        rating: productUi.product.rating.rate.toString(),
                        category: productUi.product.category,
                        reviews: productUi.product.rating.count,
                        isWishlisted: productUi.inWishlist,
                        onWishlistToggle: () {
                          final bloc = context.read<ShopBloc>();
                          if (productUi.inWishlist) {
                            bloc.add(ShopEvent.removeFromWishlist(productUi.product.id.toString()));
                          } else {
                            bloc.add(ShopEvent.addToWishlist(productUi.product.id.toString()));
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}