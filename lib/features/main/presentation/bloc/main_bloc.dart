import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_block/core/common/colors/app_colors.dart';
import 'package:ui_block/core/helpers/log_helper/log_helper.dart';

import '../../../home/presentation/view/pages/home_page.dart';
import '../../../search_features/search/presentation/view/pages/search_page.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  List<Widget> mainPages = [
    const HomePage(),
    const SearchPage(),
    Text(
      "message",
      style: TextStyle(color: AppColors().black, fontSize: 18),
    ),
    Text(
      "settings",
      style: TextStyle(color: AppColors().black, fontSize: 18),
    ),
  ];
  int currentIndex = 0;
  MainBloc() : super(const MainInitial()) {
    on<MainEvent>((event, emit) {
      if (event is ChangeCurrentIndex) {
        currentIndex = event.currentIndex;
        LogHelper.logSuccess('currentIndex is $currentIndex');
        emit(MainInitial(currentIndex: event.currentIndex));
      }
    });
  }
}
