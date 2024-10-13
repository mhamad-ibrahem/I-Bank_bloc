import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';

import '../widgets/exchange_rate_list.dart';
import '../widgets/exchange_rate_row.dart';

class ExchangeRatePage extends StatelessWidget {
  const ExchangeRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Exchange rate', context: context,isBlackText: true),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        children: [
          ExchangeRateRowWidget(),
          SizedBox(height: 10.h,),
          ExchangeRateListWidget(),
        ],
      ),
    );
  }
}