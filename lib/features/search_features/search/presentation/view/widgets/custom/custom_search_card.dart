import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';

import '../../../../data/model/static_search_model.dart';

class CustomSearchCardWidget extends StatelessWidget {
  const CustomSearchCardWidget({super.key, required this.staticSearchModel});
  final StaticSearchModel staticSearchModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(staticSearchModel.route);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
            color: AppColors().white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1), color: AppColors().lightWhite),
              BoxShadow(
                  offset: const Offset(1, 0), color: AppColors().lightWhite),
              BoxShadow(
                  offset: const Offset(-1, 0), color: AppColors().lightWhite),
              BoxShadow(
                  offset: const Offset(0, -1), color: AppColors().lightWhite)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  staticSearchModel.title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  staticSearchModel.subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: AppColors().darkGrey2),
                ),
              ],
            ),
            Image.asset(
              staticSearchModel.image,
              height: 78.h,
            )
          ],
        ),
      ),
    );
  }
}
