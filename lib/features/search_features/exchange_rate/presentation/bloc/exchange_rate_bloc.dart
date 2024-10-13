import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'exchange_rate_event.dart';
part 'exchange_rate_state.dart';

class ExchangeRateBloc extends Bloc<ExchangeRateEvent, ExchangeRateState> {
  ExchangeRateBloc() : super(ExchangeRateInitial()) {
    on<ExchangeRateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
