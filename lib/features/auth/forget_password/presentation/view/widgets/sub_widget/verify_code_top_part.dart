import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/size/app_size.dart';
import 'package:ui_block/core/helpers/validation/validation_helper.dart';
import 'package:ui_block/features/auth/forget_password/presentation/cubit/forget_password_cubit.dart';
import '../../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../../core/routes/route_export.dart';
import '../../../../../../../widgets/buttons/custom_button.dart';
import '../../../../../../../widgets/fields/custom_text_form_field.dart';

class VerifyCodeTopPartWidget extends StatelessWidget {
  const VerifyCodeTopPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final forgetPasswordCubit = context.read<ForgetPasswordCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Type a code",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColors().darkGrey2, fontSize: 14.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            Expanded(
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: forgetPasswordCubit.codeFormKey,
                child: CustomTextFormField(
                  hint: "Code",
                  textEditingController: forgetPasswordCubit.otpCode,
                  validator: (value) {
                    return ValidationHelper.validate(
                        value: value!,
                        validationType: ValidationType.number,
                        minValue: 6,
                        maxValue: 6);
                  },
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical:
                          AppSize.isTabletScreen(context: context) ? 13.h : 0),
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            CustomButton(
              height: 50.h,
              buttonBody: "Resend",
              onTap: () {},
              buttonWidth: 100.w,
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
