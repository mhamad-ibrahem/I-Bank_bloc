import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';

import '../../../../../core/common/colors/app_colors.dart';
import '../../../../../core/common/size/app_size.dart';
import '../../bloc/main_bloc.dart';
import 'sub_widget/custom_bottom_navigation_bar_taps.dart';

class MainBottomNavigationBarWidget extends StatelessWidget {
  const MainBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: AppSize.screenWidth(context: context),
        height: 80.h,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: AppColors().lightWhite))),
        child: BlocBuilder<MainBloc, MainState>(builder: (context, state) {
          return Row(
            children: [
              Expanded(
                  child: CustomBottomNavigationBarTapsWidget(
                title: 'Home',
                image: AppAssets().homeIcon,
                isSelected: context.read<MainBloc>().currentIndex == 0,
                onTap: () {
                  context.read<MainBloc>().add(ChangeCurrentIndex(0, context: context));
                },
              )),
              Expanded(
                  child: CustomBottomNavigationBarTapsWidget(
                title: 'Search',
                image: AppAssets().searchIcon,
                isSelected: context.read<MainBloc>().currentIndex == 1,
                onTap: () {
                  context.read<MainBloc>().add(ChangeCurrentIndex(1, context: context));
                },
              )),
              Expanded(
                  child: CustomBottomNavigationBarTapsWidget(
                title: 'Message',
                image: AppAssets().emailIcon,
                isSelected: context.read<MainBloc>().currentIndex == 2,
                onTap: () {
                  context.read<MainBloc>().add(ChangeCurrentIndex(2, context: context));
                },
              )),
              Expanded(
                  child: CustomBottomNavigationBarTapsWidget(
                title: 'Setting',
                image: AppAssets().settingsIcon,
                isSelected: context.read<MainBloc>().currentIndex == 3,
                onTap: () {
                  context.read<MainBloc>().add(ChangeCurrentIndex(3, context: context));
                },
              )),
            ],
          );
        }));
  }
}
