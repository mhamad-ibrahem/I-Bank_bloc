import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import '../../bloc/home_bloc.dart';
import '../widgets/home_content_widget.dart';
import '../widgets/home_header.dart';
import '../../../../../core/injection/app_injection.dart' as di;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: BlocProvider(
         create: (context) => di.sl<HomeBloc>(),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            const HomeHeaderWidget(),
            const HomeContentWidget(),
          ],
        ),
      ),
    );
  }
}
