import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/routes/route_export.dart';
import 'package:ui_block/widgets/app_bar/custom_app_bar.dart';
import '../../../../shared/widgets/custom_forget_password_card.dart';
import '../../cubit/forget_password_cubit.dart';
import '../widgets/forget_password_content.dart';
import '../../../../../../core/injection/app_injection.dart' as di;

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
                child: ForgetPasswordContentWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
