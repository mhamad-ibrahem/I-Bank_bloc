import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/log_helper/log_helper.dart';
import '../../../main.dart';

class AppCherryToast {
  static showErrorToast({
    required String errorMessage,
  }) {
    LogHelper.logError(errorMessage);
    CherryToast.error(
            title: Text(errorMessage,
                style: Theme.of(navigatorKey.currentContext!)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 16.sp),
                // textAlign: LocalizationHelper.isEnglishLanguage()? TextAlign.start: TextAlign.end
                ),
            animationType: AnimationType.fromRight,
            animationDuration: const Duration(milliseconds: 1000),
            autoDismiss: true)
        .show(navigatorKey.currentContext!);
  }

  static showSuccessToast({
    required String message,
  }) {
    LogHelper.logSuccess(message);
    CherryToast.success(
            title: Text(message,
                style: Theme.of(navigatorKey.currentContext!)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 16.sp),
                // textAlign:LocalizationHelper.isEnglishLanguage()? TextAlign.start: TextAlign.end
                ))
        .show(navigatorKey.currentContext!);
  }
}
