import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';
import '../../../../../../core/injection/app_injection.dart' as di;
import '../../../../shared/widgets/custom_forget_password_card.dart';
import '../../cubit/changepassword_cubit.dart';
import '../widgets/change_password_contenet.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Change password', context: context,isBlackText: true),
      body: BlocProvider(
        create: (context) => di.sl<ChangePasswordCubit>(),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CustomForgetPasswordCardWidget(
                child: ChangePasswordContentWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}