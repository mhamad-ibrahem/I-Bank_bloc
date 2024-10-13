import 'package:flutter/material.dart';
import 'package:ui_block/widgets/dividers/custom_horizontal_divider.dart';

import 'custom/custom_inter_set_row.dart';

class InterSetRateListWidget extends StatelessWidget {
  const InterSetRateListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) => CustomInterSetRowWidget(
        title: 'Individual customers',
        subTitle: '1m',
        thirdTitle: '4.50%',
      ),
      separatorBuilder: (context, index) => const CustomHorizontalDivider(),
    );
  }
}
