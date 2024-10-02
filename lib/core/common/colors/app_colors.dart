import 'package:flutter/material.dart';
import 'sub_colors/blue_color_level.dart';
import 'sub_colors/gradient_colors.dart';
import 'sub_colors/grey_levels_color.dart';
import 'sub_colors/main_colors.dart';

class AppColors  with  MainColorsMixin ,GradientColors,GreyLevelsColorMixin ,BlueColorLevel{
  static const Color primaryColor = Color( 0xFF3629B7);
  static const Color secondaryColor = Color(0xff616161);
  static const Color pink = Color(0xffFF4267);

  
}
