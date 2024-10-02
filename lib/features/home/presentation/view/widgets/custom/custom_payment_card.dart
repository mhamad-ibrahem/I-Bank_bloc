import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';

class CustomPaymentCardWidget extends StatelessWidget {
  const CustomPaymentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221.h,
      width: 360.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: AppColors().lightBlue,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.r),
        child: Stack(
          children: [
            Positioned(
              left: -100,
              top: -20,
              child: Container(
                height: 347.h,
                width: 353.w,
                decoration: BoxDecoration(
                    color: AppColors().darkBlue, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              right: -60,
              top: -40,
              child: Container(
                height: 187.h,
                width: 190.w,
                decoration: BoxDecoration(
                    color: AppColors().veryLightBlue, shape: BoxShape.circle),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h, bottom: 40.h),
                    child: Text(
                      "John Smith",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(color: AppColors().white, fontSize: 24.sp),
                    ),
                  ),
                  Text(
                    "Amazon Platinum",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: AppColors().white, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "4756 . . . .  . . . .  9018",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: AppColors().white, fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "\$3.469.52",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: AppColors().white, fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20.h,
              right: 30.w,
              child: Image.asset(
                AppAssets().visaIcon,
                height: 16.h,
                width: 42.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
