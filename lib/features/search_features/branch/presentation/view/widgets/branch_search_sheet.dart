import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/size/app_size.dart';
import 'package:ui_block/widgets/dividers/custom_horizontal_divider.dart';

import '../../../../../../core/common/colors/app_colors.dart';
import 'custom/custom_branch_search_result.dart';
import 'sub_widgets/branch_search_field.dart';

class BranchSearchSheetWidget extends StatelessWidget {
  const BranchSearchSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.screenHeight(context: context) / 2,
      width: AppSize.screenWidth(context: context),
      decoration: BoxDecoration(
          color: AppColors().white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -1), color: AppColors().lightWhite),
          ]),
      child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),  
        children: [
          BranchSearchFieldWidget(),
          SizedBox(height: 20.h,),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) => CustomBranchSearchResultWidget(),
              separatorBuilder: (context, index) => CustomHorizontalDivider(),
            )
        ],
      ),
    );
  }
}
