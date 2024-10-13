import 'package:flutter/material.dart';
import 'package:ui_block/core/common/size/app_size.dart';

class BranchMapWidget extends StatelessWidget {
  const BranchMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.screenHeight(context: context),
      width: AppSize.screenWidth(context: context),
    );
  }
}
