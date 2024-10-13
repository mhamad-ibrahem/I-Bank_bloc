import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';

import '../../block/register_bloc.dart';

class RegisterTermsAndConditionsRow extends StatelessWidget {
  const RegisterTermsAndConditionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final registerBloc = context.read<RegisterBloc>();
    return Row(
      children: [
        BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return Checkbox(
              
                activeColor: AppColors().white,
                fillColor: WidgetStateProperty.all(
                   registerBloc.acceptTermsAndConditions
                        ? AppColors.primaryColor
                        : AppColors().white),
                value: registerBloc.acceptTermsAndConditions,
                onChanged: (val) {
                registerBloc
                      .add(const RegisterEvent.acceptTerms());
                });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 14.sp),
              text: 'By creating an account your agree\nto our ',
              children: [
                TextSpan(
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 14.sp, color: AppColors.primaryColor),
                    text: 'Term and Conditions',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        LogHelper.logSuccess("lunch url");
                      }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
