import 'package:flutter/material.dart';
import 'package:ui_block/widgets/dividers/custom_horizontal_divider.dart';

import 'custom/custom_exchange_rate_row.dart';

class ExchangeRateListWidget extends StatelessWidget {
  const ExchangeRateListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const CustomExchangeRateRowWidget(),
      separatorBuilder: (context, index) => const CustomHorizontalDivider(),
    );
  }
}
