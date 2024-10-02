import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import '../custom/custom_payment_card.dart';

class HomePaymentCardsWidget extends StatelessWidget {
  const HomePaymentCardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomPaymentCardWidget(),
        Container(
          height: 12.h,
          width: 325.w,
          decoration: BoxDecoration(
            color: AppColors.pink,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r))
          ),
        ),
        Container(
          height: 12.h,
          width: 310.w,
          decoration: BoxDecoration(
            color: AppColors().purple,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.r))
          ),
        ),
      ],
    );
  }
}