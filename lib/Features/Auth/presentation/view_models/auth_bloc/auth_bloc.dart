import 'package:bloc/bloc.dart';
import 'package:e_gem/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        AuthRepoImpl _repoImpl = AuthRepoImpl();
        SharedPreferences _pref = await SharedPreferences.getInstance();
        if (event is LoginEvent) {
          emit(LoginLoading());
          try {
            _repoImpl.logIn(
              {
                'email': event.email,
                'password': event.password,
              },
            );
            emit(LoginSuccess());
          } catch (e) {
            emit(LoginFailure(error: e.toString()));
          }
        } else if (event is RegisterEvent) {
          emit(RegisterLoading());
          var result = await _repoImpl.getToken(event.body);
          result.fold(
            (failure) {
              print(failure.errorMessage);
              emit(RegisterFailure(error: failure.errorMessage));
            },
            (register_token) {
              _pref.setString(Strings.k_register_token, register_token);
              print(_pref.getString(Strings.k_register_token));
              emit(RegisterSuccess());
            },
          );
        }
      },
    );
  }
}
