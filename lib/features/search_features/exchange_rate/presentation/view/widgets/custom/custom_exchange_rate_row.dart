import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';

class CustomExchangeRateRowWidget extends StatelessWidget {
  const CustomExchangeRateRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Image.asset(AppAssets().vietnamFlagIcon,height: 30.h,width: 40.w,),
                  SizedBox(width: 10.w,),
                  Text(
                    'Vietnam',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall?.copyWith(fontSize: 16.sp),
                  ),
                ],
              )),
          Expanded(
              flex: 1,
              child: Text(
                '1.403',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall?.copyWith(fontSize: 16.sp),
                textAlign: TextAlign.center,
              )),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
              flex: 1,
              child: Text(
                '1.746',
                style: Theme.of(context)
                    .textTheme
                   .displaySmall?.copyWith(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
