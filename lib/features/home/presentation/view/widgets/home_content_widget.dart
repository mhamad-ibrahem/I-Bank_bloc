import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import 'package:ui_block/core/common/size/app_size.dart';
import 'sub_widgets/home_payment_cards.dart';
import 'sub_widgets/home_services_grid_view.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: AppSize.screenWidth(context: context),
        decoration: BoxDecoration(
            color: AppColors().white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20.r))),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          children: [HomePaymentCardsWidget(), HomeServicesGridVieWidget()],
        ),
      ),
    );
  }
}
