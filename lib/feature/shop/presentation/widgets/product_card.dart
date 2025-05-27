import 'package:cached_network_image/cached_network_image.dart';
import 'package:fake_store/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String price;
  final String description;
  final String rating;
  final String category;
  final int reviews;
  final bool isWishlisted;
  final VoidCallback? onWishlistToggle;

  const ProductCard({
    super.key,
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.description,
    required this.rating,
    required this.category,
    required this.reviews,
    this.isWishlisted = false,
    this.onWishlistToggle,
  });

  @override
  Widget build(BuildContext context) {
    void navigateToProduct() {
      context.push('/product/$id', extra: {
        'title': title,
        'price': price,
        'image': image,
        'category': category,
        'rating': rating,
        'reviews': reviews,
      });
    }

    return GestureDetector(
      onTap: navigateToProduct,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF6F6F6),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4.r),
                    child: CachedNetworkImage(
                      imageUrl: image,
                      width: 70.w,
                      height: 70.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 20.w, top: 12.h, bottom: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AppText.title3(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(height: 4.h),
                        AppText.subtitle2(
                          description,
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(height: 12.h),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/star.svg',
                              width: 10.w,
                              height: 10.h,
                              colorFilter: const ColorFilter.mode(
                                Color(0xFF000000),
                                BlendMode.srcIn,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              rating,
                              style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF303539),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          '24$price',
                          style: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withAlpha(191),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16.h,
            right: 16.w,
            child: GestureDetector(
              onTap: onWishlistToggle,
              child: SvgPicture.asset(
                isWishlisted ? 'assets/svg/heart_filled.svg' : 'assets/svg/heart.svg',
                width: 20.w,
                height: 20.h,
                colorFilter: ColorFilter.mode(
                  isWishlisted ? const Color(0xFFEB4335) : const Color(0xFFCBCBD4),
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
