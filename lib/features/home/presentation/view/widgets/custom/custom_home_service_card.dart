import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import '../../../data/model/home_service_model.dart';

class CustomHomeServiceCardWidget extends StatelessWidget {
  const CustomHomeServiceCardWidget({super.key, required this.homeServiceModel});
final HomeServiceModel homeServiceModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100.h,
      width: 100.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(color: AppColors().lightWhite, strokeAlign: 0.1)),
      child: Column(
        children: [
          Image.asset(
           homeServiceModel.image,
            width: 28.w,
            height: 28.h,
          ),
          SizedBox(height: 15.h,),
          Text(
            homeServiceModel.name,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: AppColors().darkGrey2,fontSize: 12.sp),textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
