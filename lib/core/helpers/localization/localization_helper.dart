import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationHelper {
  static void changeLanguage(BuildContext context) {
    bool isAr = context.locale.languageCode == 'ar';
    context.setLocale(isAr ? const Locale('en') : const Locale('ar'));
  }
}
