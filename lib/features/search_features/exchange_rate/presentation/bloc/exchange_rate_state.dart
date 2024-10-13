part of 'exchange_rate_bloc.dart';

sealed class ExchangeRateState extends Equatable {
  const ExchangeRateState();
  
  @override
  List<Object> get props => [];
}

final class ExchangeRateInitial extends ExchangeRateState {}
