import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../../../core/injection/app_injection.dart' as di;
import '../../../../shared/widgets/custom_forget_password_card.dart';
import '../../cubit/forget_password_cubit.dart';
import '../widgets/verify_code_content.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(
            title: 'Forgot password', context: context, isBlackText: true),
        body: BlocProvider(
          create: (context) => di.sl<ForgetPasswordCubit>(),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomForgetPasswordCardWidget(
                  child: VerifyCodeContentWidget() )
              ],
            ),
          ),
        ));
  }
}
