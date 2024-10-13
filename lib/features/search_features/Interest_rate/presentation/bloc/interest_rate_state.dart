part of 'interest_rate_bloc.dart';

sealed class InterestRateState extends Equatable {
  const InterestRateState();
  
  @override
  List<Object> get props => [];
}

final class InterestRateInitial extends InterestRateState {}
