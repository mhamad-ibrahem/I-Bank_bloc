import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/colors/app_colors.dart';

class CustomForgetPasswordCardWidget extends StatelessWidget {
  const CustomForgetPasswordCardWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors().white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 2), color: AppColors().lightWhite),
            BoxShadow(
                offset: const Offset(2, 0), color: AppColors().lightWhite),
            BoxShadow(
                offset: const Offset(-2, 0), color: AppColors().lightWhite),
            BoxShadow(
                offset: const Offset(0, -2), color: AppColors().lightWhite)
          ],
        ),
        child: child);
  }
}
