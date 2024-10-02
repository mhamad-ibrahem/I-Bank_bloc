import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets().avatarImage,
                height: 50.h,
                width: 50.w,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Hi, Push Petticoat',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: AppColors().white),
              )
            ],
          ),
          Image.asset(
            AppAssets().notificationIcon,
            width: 24.w,
            height: 24.h,
          )
        ],
      ),
    );
  }
}
