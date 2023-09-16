import 'package:bloc/bloc.dart';
import 'package:e_gem/Features/Auth/repos/auth_repo_impl.dart';
import 'package:e_gem/constants/strings.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        SharedPreferences pref = await SharedPreferences.getInstance();
        AuthRepoImpl _repoImpl = AuthRepoImpl();
        if (event is LoginEvent) {
          emit(LoginLoading());
          var result = await _repoImpl.getLogin({
            'email': event.email,
            'password': event.password,
          });
          result.fold(
            (failure) {
              print(failure.errorMessage);
              emit(LoginFailure(error: failure.errorMessage));
            },
            (user_model) {
              pref.setString(Strings.k_token, user_model.name);

              emit(LoginSuccess());
            },
          );
        } else if (event is RegisterEvent) {
          emit(RegisterLoading());
          var result = await _repoImpl.getToken(event.body);
          result.fold(
            (failure) {
              print(failure.errorMessage);
              emit(RegisterFailure(error: failure.errorMessage));
            },
            (register_token) {
              emit(RegisterSuccess());
            },
          );
        }
      },
    );
  }
}
