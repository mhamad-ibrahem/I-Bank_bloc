import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';

class CustomInterSetRowWidget extends StatelessWidget {
  const CustomInterSetRowWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.thirdTitle,
      this.isMainRow = false});
  final String title;
  final String subTitle;
  final String thirdTitle;
  final bool isMainRow;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Text(
                title,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: isMainRow ? AppColors().darkGrey2 : null,
                    fontWeight: isMainRow ? FontWeight.w600 : null,
                    fontSize: 16.sp),
              )),
          Expanded(
              flex: 1,
              child: Text(
                subTitle,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: isMainRow ? AppColors().darkGrey2 : null,
                    fontWeight: isMainRow ? FontWeight.w600 : null,
                    fontSize: 16.sp),
                    textAlign: TextAlign.center,
              )),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              flex: 1,
              child: Text(
                thirdTitle,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: isMainRow
                        ? AppColors().darkGrey2
                        : AppColors.primaryColor,
                    fontWeight: isMainRow ? FontWeight.w600 : null,
                    fontSize: 16.sp),
                    textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
