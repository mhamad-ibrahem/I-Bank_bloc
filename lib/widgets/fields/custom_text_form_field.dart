import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/common/colors/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.icon,
    this.hint,
    this.obscure = false,
    this.textEditingController,
    this.validator,
    this.inputType,
    this.suffixIcon,
    this.onChange,
    this.onTap,
    this.focusNode,
    this.numberOfLines,
    this.isEnable = true,
    this.onFieldSubmitted,
    this.isReadOnly = false,
    this.isField = false,
    this.onLeadingTap,
    this.fillColor,
    this.radius,
    this.contentPadding,
  }) : super(key: key);
  final Widget? icon;
  final String? hint;
  final bool obscure;
  final TextInputType? inputType;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final void Function(String)? onChange;
  final int? numberOfLines;
  final void Function()? onTap;
  final void Function()? onLeadingTap;
  final FocusNode? focusNode;
  final bool isEnable;
  final void Function(String)? onFieldSubmitted;
  final bool isReadOnly;
  final bool isField;
  final Color? fillColor;
  final double? radius;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onChanged: onChange,
      controller: textEditingController,
      validator: validator,
      style: Theme.of(context).textTheme.displayMedium!.copyWith(
            color: AppColors().black,
            fontSize: 14.sp,
          ),
      obscureText: obscure,
      enabled: isEnable,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      readOnly: isReadOnly,
      maxLines: numberOfLines ?? 1,
      cursorColor: AppColors().grey2,
      keyboardType: inputType,
      decoration: InputDecoration(
        errorStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors().red, fontSize: 12.sp),
          fillColor: fillColor ?? AppColors().grey,
          enabled: isEnable,
          filled: isField,
          suffixIcon: suffixIcon,
          prefix:icon ,
          contentPadding: contentPadding ??
               EdgeInsets.only(left: 0.w, right: 0.w, top: 20.h, bottom: 20.h),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hint,
          hintStyle: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: AppColors().grey2, fontSize: 12.sp),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 15),
              borderSide: const BorderSide(color: AppColors.primaryColor, width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 15),
              borderSide: BorderSide(color: AppColors().grey2, width: 1)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 15),
              borderSide: BorderSide(color: AppColors().grey2)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 15),
              borderSide: BorderSide(color: AppColors().red, width:1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 15),
          )),
    );
  }
}
