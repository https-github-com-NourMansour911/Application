import 'package:bloc/bloc.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarState());
  int currentIndex = 0;

  void select(index) {
    currentIndex = index;
    emit(NavBarState());
  }
}
