import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors/app_colors.dart';


AppColors appColors = AppColors();
TextStyle displaySmallLightAr() {
  return TextStyle(
    color: appColors.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
}

TextStyle displayMediumLightAr() {
  return TextStyle(
      color: appColors.black, fontSize: 16.sp, fontWeight: FontWeight.w500);
}

TextStyle displayLargeLightAr() {
  return TextStyle(
    color: appColors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
}
