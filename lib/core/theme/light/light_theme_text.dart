import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/colors/app_colors.dart';

AppColors appColors = AppColors();
TextStyle displaySmallLight() {
  return  TextStyle(
      color: appColors.black, fontSize: 12.sp, fontWeight: FontWeight.w400,
      // fontFamily: LocalizationHelper.isEnglishLanguage()? AppAssets().tajawal:null
      );
}

TextStyle displayMediumLight() {
  return  TextStyle(
      color: appColors.black, fontSize: 16.sp, fontWeight: FontWeight.w500,
      // fontFamily:LocalizationHelper.isEnglishLanguage()? AppAssets().tajawal:null
      );
}

TextStyle displayLargeLight() {
  return  TextStyle(
      color: appColors.black, fontSize: 20.sp, fontWeight: FontWeight.bold,
      // fontFamily: LocalizationHelper.isEnglishLanguage()? AppAssets().tajawal:null
      );
}
