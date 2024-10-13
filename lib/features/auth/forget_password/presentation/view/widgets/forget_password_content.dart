import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/helpers/validation/validation_helper.dart';
import 'package:ui_block/features/auth/forget_password/presentation/cubit/forget_password_cubit.dart';
import '../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../core/common/size/app_size.dart';
import '../../../../../../widgets/buttons/custom_button.dart';
import '../../../../../../widgets/fields/custom_text_form_field.dart';

class ForgetPasswordContentWidget extends StatelessWidget {
  const ForgetPasswordContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final forgetPasswordCubit = context.read<ForgetPasswordCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type your phone number ",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColors().darkGrey2, fontSize: 14.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        Form(
          key: forgetPasswordCubit.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: CustomTextFormField(
            hint: "(+84)",
            contentPadding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: AppSize.isTabletScreen(context: context) ? 13.h : 0),
            textEditingController: forgetPasswordCubit.phoneNumber,
            validator: (val) {
              return ValidationHelper.validate(
                  value: val!,
                  validationType: ValidationType.number,
                  minValue: 8,
                  maxValue: 12);
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "We texted you a code to verify your\nphone number",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontSize: 14.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        Center(
            child: CustomButton(
                buttonBody: "Send",
                onTap: () {
                  context
                      .read<ForgetPasswordCubit>()
                      .sendForgetPasswordRequest(context);
                }))
      ],
    );
  }
}
