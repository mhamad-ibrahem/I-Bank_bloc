import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection/app_injection.dart' as di;
import '../../bloc/main_bloc.dart';
import '../widgets/main_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<MainBloc>(),
      child: Scaffold(
        bottomNavigationBar: const MainBottomNavigationBarWidget(),
        body: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return Center(child: context
                .read<MainBloc>()
                .mainPages[context.read<MainBloc>().currentIndex],);
          },
        ),
      ),
    );
  }
}
