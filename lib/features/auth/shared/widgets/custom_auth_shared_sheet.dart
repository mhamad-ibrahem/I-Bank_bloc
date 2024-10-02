import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/colors/app_colors.dart';
import '../../../../core/common/size/app_size.dart';

class CustomAuthSharedSheetWidget extends StatelessWidget {
  const CustomAuthSharedSheetWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.child});
  final String title;
  final String subTitle;
  final String image;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHeight(context: context),
      width: AppSize.screenWidth(context: context),
      decoration: BoxDecoration(
          color: AppColors().white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: AppColors.primaryColor,
                    )),
            SizedBox(
              height: 5.h,
            ),
            Text(subTitle,
                style: Theme.of(context).textTheme.displaySmall!.copyWith()),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 40.h, bottom: 30.h),
                  height: 165.h,
                  width: 213.w,
                  child: Image.asset(image)),
            ),
            child
          ],
        ),
      ),
    );
  }
}
