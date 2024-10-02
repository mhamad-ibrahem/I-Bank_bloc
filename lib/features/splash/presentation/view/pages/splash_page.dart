import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common/colors/app_colors.dart';
import '../../../../../core/common/size/app_size.dart';
import '../../../../../core/config/classes/status_request.dart';
import '../../../../../shared/widgets/handling_api_request/retry_button.dart';
import '../../../../../shared/widgets/loading/loading_logo.dart';
import '../../../../../core/injection/app_injection.dart' as di;
import '../../../../../shared/widgets/loading/loading_points.dart';
import '../../bloc/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
      body: BlocProvider(
        create: (context) => di.sl<SplashBloc>()..add(InitEvent(context: context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedLogo(
              height: AppSize.screenHeight(context: context) * 0.35,
              width: AppSize.screenWidth(context: context),
            ),
            SizedBox(
              height: 20.h,
            ),
            BlocBuilder<SplashBloc, SplashState>(
              builder: (context, state) {
                if (state is SplashInitial) {
                  return state.statusRequest == StatusRequest.loading
                      ? LoadingPoint(
                          size: 20.w,
                        )
                      : state.statusRequest == StatusRequest.failure
                          ? RetryButton(
                              isWithUpperText: false,
                              onTap: () {
                              //  BlocProvider.of<SplashBloc>(context).initialServices();
                              })
                          : const SizedBox();
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
