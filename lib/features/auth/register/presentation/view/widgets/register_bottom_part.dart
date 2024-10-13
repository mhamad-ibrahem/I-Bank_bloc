import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ui_block/core/common/size/app_size.dart';
import 'package:ui_block/widgets/buttons/custom_button.dart';

import '../../../../../../core/common/colors/app_colors.dart';
import '../../block/register_bloc.dart';

class RegisterBottomPartWidget extends StatelessWidget {
  const RegisterBottomPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final registerBloc = context.read<RegisterBloc>();
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        CustomButton(
            buttonWidth: AppSize.screenWidth(context: context) * 0.88,
            buttonBody: 'Sign up',
            onTap: () {
              registerBloc.add(RegisterEvent.createAccount(context: context));
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Have an account? ",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 12.sp),
            ),
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text("Sign In",
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
