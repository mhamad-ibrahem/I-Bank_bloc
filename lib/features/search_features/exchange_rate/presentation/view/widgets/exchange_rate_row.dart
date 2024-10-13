import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';

class ExchangeRateRowWidget extends StatelessWidget {
  const ExchangeRateRowWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.h),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Text(
                'Country',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors().darkGrey2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              )),
          Expanded(
              flex: 1,
              child: Text(
                'Buy',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors().darkGrey2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
                textAlign: TextAlign.center,
              )),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              flex: 1,
              child: Text(
                'Sell',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppColors().darkGrey2,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
