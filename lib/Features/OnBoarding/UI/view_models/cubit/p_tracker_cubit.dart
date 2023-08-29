import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'p_tracker_state.dart';

class PTrackerCubit extends Cubit<PTrackerState> {
  PTrackerCubit() : super(PTrackerInitial());
  bool preview_done = false;
  void checkPreview(int value) {
    if (value == 2) {
      emit(PTrackerFinish());
    } else {
      emit(PTrackeractive());
    }
  }
}
