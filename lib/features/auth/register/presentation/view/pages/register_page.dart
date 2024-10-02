import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/common/assets/app_assets.dart';
import '../../../../../../core/common/colors/app_colors.dart';
import '../../../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../shared/widgets/custom_auth_shared_sheet.dart';
import '../../block/register_bloc.dart';
import '../widgets/register_bottom_part.dart';
import '../widgets/register_form.dart';
import '../widgets/register_terms_and_conditions_row.dart';
import '../../../../../../core/injection/app_injection.dart' as di;

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(title: 'Sign up', context: context, ),
      body:BlocProvider(
        create: (context) => di.sl<RegisterBloc>(),
        child: CustomAuthSharedSheetWidget(
        title: 'Welcome to us,',
        subTitle: 'Hello there, create New account',
        image: AppAssets().registerImage,
        child: const Column(
          children: [
            RegisterFormWidget(),
            RegisterTermsAndConditionsRow(),
            RegisterBottomPartWidget(),
          ],
        ),
      ),
    ));
  }
}
