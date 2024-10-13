import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';
import '../../../core/common/colors/app_colors.dart';
import '../../../widgets/fields/custom_text_form_field.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget(
      {super.key,
      this.onFieldSubmitted,
      this.searchTextEditingController,
      this.isReadOnly = false,
      this.onTap,
      this.hintText});
  final void Function(String)? onFieldSubmitted;
  final TextEditingController? searchTextEditingController;
  final void Function()? onTap;
  final bool isReadOnly;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      isField: true,
      onTap: onTap,
      isReadOnly: isReadOnly,
      radius: 16.r,
      hint: hintText ?? 'Search...',
      textEditingController: searchTextEditingController,
      onFieldSubmitted: onFieldSubmitted,
      fillColor: AppColors().white,
      icon: Padding(
        padding:  EdgeInsets.only(right: 10.w,left: 5.w),
        child: Image.asset(
          AppAssets().searchIcon,
          color: AppColors().black,
          height: 16.h,
          width: 16.w,
        ),
      ),
      suffixIcon: IconButton(
          onPressed: () {
            if (searchTextEditingController != null) {
              searchTextEditingController!.clear();
            }
          },
          icon: Icon(
            Icons.close,
            color: AppColors().darkGrey2,
            size: 20.w,
          )),
    );
  }
}
