import 'package:cached_network_image/cached_network_image.dart';
import 'package:fake_store/core/components/app_button.dart';
import 'package:fake_store/core/components/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WishlistCard extends StatefulWidget {
  final String title;
  final String image;
  final String price;
  final VoidCallback onAddToCart;
  final VoidCallback onRemove;

  const WishlistCard({
    super.key,
    required this.title,
    required this.image,
    required this.price,
    required this.onAddToCart,
    required this.onRemove,
  });

  @override
  State<WishlistCard> createState() => _WishlistCardState();
}

class _WishlistCardState extends State<WishlistCard> {
  bool isLiked = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    imageUrl: widget.image,
                    width: 70.w,
                    height: 70.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 16.w, top: 12.h, bottom: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.title3(widget.title),
                      SizedBox(height: 12.h),
                      Text(
                        '\$${widget.price}',
                        style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withValues(alpha: 0.75),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      SizedBox(
                        width: double.infinity,
                        child: AppButton.small(
                          onPressed: widget.onAddToCart,
                          style: AppButtonStyle.whiteButton,
                          text: 'Add to cart',
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
            onTap: () {
              setState(() {
                isLiked = !isLiked;
              });
              widget.onRemove();
            },
            child: SvgPicture.asset(
              isLiked ? 'assets/svg/heart_filled.svg' : 'assets/svg/heart.svg',
              width: 16.w,
              height: 16.h,
              colorFilter: ColorFilter.mode(
                isLiked ? const Color(0xFFEB4335) : const Color(0xFFCBCBD4),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
