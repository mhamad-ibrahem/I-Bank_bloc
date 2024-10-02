import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/routes/route_export.dart';
import '../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../core/common/size/app_size.dart';
import '../../../../../../widgets/fields/custom_text_form_field.dart';
import '../../block/login_bloc.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTextFormField(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical:AppSize.isTabletScreen(context: context)? 13.h:0),
          hint: "Text input",
        ),
        SizedBox(
          height: 10.h,
        ),
        BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
          return CustomTextFormField(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical:AppSize.isTabletScreen(context: context)? 13.h:0),
            hint: "Password",
            obscure: context.read<LoginBloc>().obscureForm,
            suffixIcon: IconButton(
                onPressed: () {
                  context
                      .read<LoginBloc>()
                      .add(const LoginEvent.changeObscure());
                },
                icon: Icon(
                  context.read<LoginBloc>().obscureForm
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.primaryColor,
                  size: 22.w,
                )),
          );
        }),
        SizedBox(
          height: 10.h,
        ),
        GestureDetector(
          onTap: () {
            context.push(AppRoutes().forgetPasswordRoute);
          },
          child: Text(
            "Forgot your password ?",
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 12.sp, color: AppColors().grey2),
          ),
        ),
      ],
    ));
  }
}
