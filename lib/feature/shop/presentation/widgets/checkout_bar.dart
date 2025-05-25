// lib/feature/shop/presentation/widgets/checkout_bar.dart
import 'package:fake_store/core/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutBar extends StatelessWidget {
  final VoidCallback? onCheckout;
  final String total;
  final VoidCallback? onAddToCart;
  final String label;

  const CheckoutBar({
    super.key,
    required this.onCheckout,
    required this.total,
  })  : onAddToCart = null,
        label = 'Cart total';

  factory CheckoutBar.product({
    required VoidCallback onAddToCart,
    required String total,
  }) {
    return CheckoutBar._product(
      onAddToCart: onAddToCart,
      total: total,
      label: 'Price',
    );
  }

  const CheckoutBar._product({
    this.onAddToCart,
    required this.total,
    required this.label,
  }) : onCheckout = null;

  @override
  Widget build(BuildContext context) {
    if (onAddToCart != null) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: const Color(0xFFFFE8B2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF616161),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '\$$total',
                  style: GoogleFonts.lora(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF3A3A3A),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              flex: 7,
              child: AppButton.main(
                onPressed: onAddToCart,
                style: AppButtonStyle.blackButton,
                text: 'Add to cart',
              ),
            ),
          ],
        ),
      );
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: const Color(0xFF000000).withValues(alpha: 0.1),
            width: 1.w,
          ),
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF616161),
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                '\$$total',
                style: GoogleFonts.lora(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF3A3A3A),
                ),
              ),
            ],
          ),
          const Spacer(),
          Expanded(
            flex: 7,
            child: AppButton.main(
              onPressed: onCheckout,
              style: AppButtonStyle.blackButton,
              text: 'Checkout',
            ),
          ),
        ],
      ),
    );
  }
}