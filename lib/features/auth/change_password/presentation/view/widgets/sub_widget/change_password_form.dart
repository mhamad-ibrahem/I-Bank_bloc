import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../../core/common/size/app_size.dart';
import '../../../../../../../core/routes/route_export.dart';
import '../../../../../../../widgets/fields/custom_text_form_field.dart';
import '../../../cubit/changepassword_cubit.dart';

class ChangePasswordFormWidget extends StatelessWidget {
  const ChangePasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
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
          height: 10.h,
        ),
        BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
            builder: (context, state) {
          return CustomTextFormField(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical:AppSize.isTabletScreen(context: context)? 13.h:0),
            hint: "************",
            obscure: context.read<ChangePasswordCubit>().passwordObscure,
            suffixIcon: IconButton(
                onPressed: () {
                  context.read<ChangePasswordCubit>().changePasswordObscure();
                },
                icon: Icon(
                  context.read<ChangePasswordCubit>().passwordObscure
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.primaryColor,
                  size: 22.w,
                )),
          );
        }),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Confirm password",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: AppColors().darkGrey2, fontSize: 14.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
         BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
            builder: (context, state) {
          return CustomTextFormField(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w ,vertical:AppSize.isTabletScreen(context: context)? 13.h:0),
            hint: "************",
            obscure: context.read<ChangePasswordCubit>().confirmPasswordObscure,
            suffixIcon: IconButton(
                onPressed: () {
                  context.read<ChangePasswordCubit>().changeConfirmPasswordObscure();
                },
                icon: Icon(
                  context.read<ChangePasswordCubit>().confirmPasswordObscure
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: AppColors.primaryColor,
                  size: 22.w,
                )),
          );
        }),
      ],
    ));
  }
}
