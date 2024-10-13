part of 'branch_bloc.dart';

sealed class BranchState extends Equatable {
  const BranchState();
  
  @override
  List<Object> get props => [];
}

final class BranchInitial extends BranchState {}
