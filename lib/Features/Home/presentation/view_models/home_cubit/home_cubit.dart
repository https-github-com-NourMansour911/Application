import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int slider_Index = 0;
  void changeSliderIndex(int index) {
    slider_Index = index;
    emit(ImageSliderChanged());
  }
}
