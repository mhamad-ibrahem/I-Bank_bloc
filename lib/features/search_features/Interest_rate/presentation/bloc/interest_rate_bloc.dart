import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'interest_rate_event.dart';
part 'interest_rate_state.dart';

class InterestRateBloc extends Bloc<InterestRateEvent, InterestRateState> {
  InterestRateBloc() : super(InterestRateInitial()) {
    on<InterestRateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
