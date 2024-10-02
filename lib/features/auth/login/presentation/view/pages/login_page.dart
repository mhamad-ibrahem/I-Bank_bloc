import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';
import '../../../../shared/widgets/custom_auth_shared_sheet.dart';
import '../../block/login_bloc.dart';
import '../widgets/login_bottom_part.dart';
import '../widgets/login_form.dart';
import '../../../../../../core/injection/app_injection.dart' as di;
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(title: '', context: context, isBack: false),
      body: BlocProvider(
        create: (context) => di.sl<LoginBloc>(),
        child: CustomAuthSharedSheetWidget(
        title: "Welcome Back",
        subTitle: "Hello there, sign in to continue",
        image: AppAssets().appIcon,
        child: const Column(
          children: [
            LoginFormWidget(),
            LoginBottomPartWidget(),
          ],
        ),
      ),
    ));
  }
}
