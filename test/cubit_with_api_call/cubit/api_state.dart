part of 'api_cubit.dart';

sealed class ApiState extends Equatable {
  const ApiState();

  @override
  List<Object> get props => [];
}

final class ApiInitial extends ApiState {
  final StatusRequest statusRequest;

  const ApiInitial({required this.statusRequest});
   @override
  List<Object> get props => [statusRequest];

}
