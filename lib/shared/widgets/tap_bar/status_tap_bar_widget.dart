import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/common/colors/app_colors.dart';

class StatusTapBarWidget extends StatelessWidget {
  const StatusTapBarWidget({
    super.key,
    this.onTap,
    this.initialIndex = 0,
  });
  final void Function(int)? onTap;
  final int initialIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: DefaultTabController(
        initialIndex: initialIndex,
        length: 3,
        child: TabBar(
          isScrollable: true,
          onTap: onTap,
          indicatorColor: AppColors.primaryColor,
          labelStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: AppColors().black,
              fontWeight: FontWeight.w500,
              fontSize: 15),
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(
                  color: AppColors().darkGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
          labelColor: AppColors.primaryColor,
          unselectedLabelColor: AppColors().darkGrey,
          indicatorWeight: 4,
          tabs: [
            Text("Current".tr),
            Text(
              "Accepted".tr,
            ),
             Text(
              "Rejected".tr,
            ),
          ],
        ),
      ),
    );
  }
}
