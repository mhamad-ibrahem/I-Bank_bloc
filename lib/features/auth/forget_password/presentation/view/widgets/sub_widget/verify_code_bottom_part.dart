import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../../widgets/buttons/custom_button.dart';
import '../../../cubit/forget_password_cubit.dart';

class VerifyCodeBottomPartWidget extends StatelessWidget {
  const VerifyCodeBottomPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
          text: "We texted you a code to verify your\nphone number ",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontSize: 14.sp, color: AppColors().darkGrey2),
          children: [
            TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14.sp, color: AppColors.primaryColor),
              text: '(+84) 0398829xxx\n\n',
            ),
            TextSpan(
              text:
                  "This code will expired 10 minutes after this message. If you don't get a message.",
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 14.sp, color: AppColors().darkGrey2),
            )
          ],
        )),
        SizedBox(
          height: 20.h,
        ),
        Center(
            child: CustomButton(
                buttonBody: "Send",
                onTap: () {
                  context.read<ForgetPasswordCubit>().verifyCode(context);
                }))
      ],
    );
  }
}
