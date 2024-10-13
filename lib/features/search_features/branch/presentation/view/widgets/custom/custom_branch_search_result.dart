import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';

class CustomBranchSearchResultWidget extends StatelessWidget {
  const CustomBranchSearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: AppColors().purple,
                  size: 20.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Bank 1656 Union Street',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium!
                      .copyWith(fontSize: 14.sp),
                )
              ],
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            '50 m',
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 12.sp, color: AppColors().darkGrey2),
          )
        ],
      ),
    );
  }
}
