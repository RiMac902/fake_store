import 'package:fake_store/core/components/app_text.dart';
import 'package:fake_store/feature/shop/presentation/bloc/shop/shop_bloc.dart';
import 'package:fake_store/feature/shop/presentation/widgets/checkout_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  final String id;
  final String title;
  final String price;
  final String image;
  final String category;
  final String rating;
  final int reviews;

  const ProductPage({
    super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.category,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        actions: [
          BlocBuilder<ShopBloc, ShopState>(
            builder: (context, state) {
              final isWishlisted = state.wishlist.any((p) => p.product.id.toString() == id);
              return GestureDetector(
                onTap: () {
                  final bloc = context.read<ShopBloc>();
                  if (isWishlisted) {
                    bloc.add(ShopEvent.removeFromWishlist(id));
                  } else {
                    bloc.add(ShopEvent.addToWishlist(id));
                  }
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: SvgPicture.asset(
                    isWishlisted ? 'assets/svg/heart_filled.svg' : 'assets/svg/heart.svg',
                    width: 24.w,
                    height: 24.h,
                    colorFilter: ColorFilter.mode(
                      isWishlisted ? Colors.red : const Color(0xFFCBCBD4),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: const Color(0xFFFFE8B2),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color(0xFFF7F8F9),
                        height: 300.h,
                        width: double.infinity,
                        child: Image.network(image),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.title3(title),
                          SizedBox(height: 8.h),
                          AppText.subtitle2(category),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svg/star.svg'),
                              SizedBox(width: 4.w),
                              Text(
                                rating,
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF303539),
                                ),
                              ),
                              SizedBox(width: 4.w),
                              Text(
                                '$reviews Reviews',
                                style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFFA6A6AA),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CheckoutBar.product(
                total: price,
                onAddToCart: () {
                  context.read<ShopBloc>().add(ShopEvent.addToCart(id));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product added to cart'),
                      backgroundColor: Colors.green,
                    ),
                  );
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
