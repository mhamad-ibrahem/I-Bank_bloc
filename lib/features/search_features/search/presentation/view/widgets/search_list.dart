import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/static/static_search_list.dart';
import 'custom/custom_search_card.dart';

class SearchListWidget extends StatelessWidget {
  const SearchListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: staticSearchList.length,
      itemBuilder: (context, index) => CustomSearchCardWidget(
        staticSearchModel: staticSearchList[index],
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 20.h,
      ),
    );
  }
}
