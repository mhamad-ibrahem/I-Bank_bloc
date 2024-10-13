import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/features/auth/login/presentation/block/login_bloc.dart';
import '../../../../../../core/common/assets/app_assets.dart';
import '../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../core/common/size/app_size.dart';
import '../../../../../../core/routes/route_export.dart';
import '../../../../../../widgets/buttons/custom_button.dart';

class LoginBottomPartWidget extends StatelessWidget {
  const LoginBottomPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30.h, bottom: 20.h),
            child: CustomButton(
                buttonWidth: AppSize.screenWidth(context: context),
                buttonBody: "Sign in",
                onTap: () {
                  context
                      .read<LoginBloc>()
                      .add(LoginEvent.loginEventUseCase(context: context));
                })),
        Center(
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 64.h,
              width: 64.w,
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10.h),
              child: Image.asset(
                AppAssets().fingerprintIcon,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12.sp),
            ),
            TextButton(
                onPressed: () {
                  context.push(AppRoutes().register);
                },
                child: Text("Sign Up",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor))),
          ],
        )
      ],
    );
  }
}
