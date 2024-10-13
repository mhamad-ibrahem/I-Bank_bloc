import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'branch_event.dart';
part 'branch_state.dart';

class BranchBloc extends Bloc<BranchEvent, BranchState> {
  BranchBloc() : super(BranchInitial()) {
    on<BranchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
