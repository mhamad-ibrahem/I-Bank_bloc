import 'package:flutter/material.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';

import '../widgets/branch_map.dart';
import '../widgets/branch_search_sheet.dart';

class BranchPage extends StatelessWidget {
  const BranchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppBar(title: 'Branch', context: context, isBlackText: true),
      body: Stack(
        children: [
          BranchMapWidget(),
          Positioned(
            bottom: 0,
            child: BranchSearchSheetWidget()),
        ],
      ),
    );
  }
}
