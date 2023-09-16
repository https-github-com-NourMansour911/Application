import 'package:bloc/bloc.dart';
import 'package:e_gem/core/utils/dio_requests.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int slider_Index = 0;
  void changeSliderIndex(int index) {
    slider_Index = index;
    emit(ImageSliderChanged());
  }

  getCoaches(String token) async {
    try {
      var response = await Api.get(endPoint: '/coaches', token: token);
      return response;
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
