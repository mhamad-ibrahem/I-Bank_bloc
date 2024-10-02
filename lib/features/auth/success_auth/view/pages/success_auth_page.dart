import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import 'package:ui_block/core/routes/route_export.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';
import 'package:ui_block/widgets/buttons/custom_button.dart';

class SuccessAuthPage extends StatelessWidget {
  const SuccessAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          title: '', context: context, isBlackText: true,onPressed: () {
            context.go(AppRoutes().login);
          }, ),
      body: Column(
        children: [
           SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 216.h,
            width: 327.w,
            child: Image.asset(AppAssets().successChangePasswordImage),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text('Change password successfully!',
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 18.sp
                  )),
          SizedBox(
            height: 30.h,
          ),
          Text(
              'You have successfully change password.\nPlease use the new password when Sign in.',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 14.sp),textAlign: TextAlign.center,),
          SizedBox(
            height: 30.h,
          ),
          Center(child: CustomButton(buttonBody: 'Ok', onTap: () {
              context.go(AppRoutes().login);
          })),
        ],
      ),
    );
  }
}
