import 'package:flutter/material.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/features/home/presentation/data/static/services_static_data.dart';

import '../custom/custom_home_service_card.dart';

class HomeServicesGridVieWidget extends StatelessWidget {
  const HomeServicesGridVieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
      itemCount: homeServices.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 15.w,
      mainAxisSpacing: 15.h,
      builder: (context, index) => CustomHomeServiceCardWidget(
        homeServiceModel: homeServices[index],
      ),
    );
  }
}
