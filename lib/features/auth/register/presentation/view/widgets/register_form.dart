import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import '../../../../../../core/common/size/app_size.dart';
import '../../../../../../widgets/fields/custom_text_form_field.dart';
import '../../block/register_bloc.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: AppSize.isTabletScreen(context: context) ? 13.h : 0),
          hint: "Text input",
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomTextFormField(
          contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: AppSize.isTabletScreen(context: context) ? 13.h : 0),
          hint: "Number",
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
              obscure: context.read<RegisterBloc>().obscureForm,
              suffixIcon: IconButton(
                  onPressed: () {
                    context
                        .read<RegisterBloc>()
                        .add(const RegisterEvent.changeObscure());
                  },
                  icon: Icon(
                    context.read<RegisterBloc>().obscureForm
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
