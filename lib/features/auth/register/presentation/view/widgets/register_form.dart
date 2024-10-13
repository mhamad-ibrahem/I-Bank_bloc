import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import 'package:ui_block/core/helpers/validation/validation_helper.dart';
import '../../../../../../core/common/size/app_size.dart';
import '../../../../../../widgets/fields/custom_text_form_field.dart';
import '../../block/register_bloc.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final registerBloc = context.read<RegisterBloc>();
    return Form(
      key: registerBloc.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
      children: [
        CustomTextFormField(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: AppSize.isTabletScreen(context: context) ? 13.h : 0),
          hint: "Text input",
          textEditingController: registerBloc.email,
          validator: (p0) {
            return ValidationHelper.validate(
                value: p0!,
                validationType: ValidationType.email,
                minValue: 1,
                maxValue: 200);
          },
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: AppSize.isTabletScreen(context: context) ? 13.h : 0),
          hint: "Number",
          validator: (p0) {
            return ValidationHelper.validate(
                value: p0!,
                validationType: ValidationType.number,
                minValue: 8,
                maxValue: 12);
          },
        ),
        SizedBox(
          height: 10.h,
        ),
        BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return CustomTextFormField(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical:
                      AppSize.isTabletScreen(context: context) ? 13.h : 0),
              hint: "Password",
              textEditingController: registerBloc.password,
              validator: (p0) {
                return ValidationHelper.validate(
                    value: p0!,
                    validationType: ValidationType.any,
                    minValue: 6,
                    maxValue: 100);
              },
              obscure: registerBloc.obscureForm,
              suffixIcon: IconButton(
                  onPressed: () {
                   registerBloc
                        .add(const RegisterEvent.changeObscure());
                  },
                  icon: Icon(
                   registerBloc.obscureForm
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.primaryColor,
                    size: 22.w,
                  )),
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    ));
  }
}
