import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common/colors/app_colors.dart';

class CustomBottomNavigationBarTapsWidget extends StatelessWidget {
  const CustomBottomNavigationBarTapsWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.isSelected, this.onTap});
  final String title;
  final String image;
  final bool isSelected;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 700),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryColor : AppColors().white,
            borderRadius: BorderRadius.circular(20.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
              width: 20.w,
              child: Image.asset(
                image,
                color: isSelected ? AppColors().white : AppColors().darkGrey3,
              ),
            ),
            SizedBox(
              width: 7.w,
            ),
          if(isSelected)  Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: AppColors().white,fontSize: 11.sp),
            )
          ],
        ),
      ),
    );
  }
}
