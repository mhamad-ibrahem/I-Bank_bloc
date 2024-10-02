import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/common/colors/app_colors.dart';
import 'package:go_router/go_router.dart';

AppBar customAppBar({
  required String title,
  required BuildContext context,
  SystemUiOverlayStyle? systemOverlayStyle,
  List<Widget>? actions,
  bool isBack = true,
  bool isBlackText = false,
  VoidCallback? onPressed,
}) {
  return AppBar(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    centerTitle: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 50.h,
    titleSpacing: 0.w,
    title: Text(
      title,
      style: Theme.of(context).textTheme.displayMedium?.copyWith(
          fontSize: 18.sp, color: !isBlackText ? AppColors().white : null),
    ),
    leading: isBack
        ? GestureDetector(
            onTap: onPressed ??
                () {
                  context.pop();
                },
            child: Icon(Icons.arrow_back_ios,
                color: !isBlackText ? AppColors().white : AppColors().black,
                size: 22.w))
        : null,
    actions: actions,
  );
}
