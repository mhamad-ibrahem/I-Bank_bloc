import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';

import '../widgets/custom/custom_inter_set_row.dart';
import '../widgets/inter_set_rate_list.dart';

class InterestRatePage extends StatelessWidget {
  const InterestRatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Interest rate', context: context,isBlackText: true),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        children: [
          CustomInterSetRowWidget(title: 'Interest kind', subTitle: 'Deposit', thirdTitle: 'Rate',isMainRow: true,),
          SizedBox(height: 20.h,),
          InterSetRateListWidget(),
        ],
      ),
    );
  }
}