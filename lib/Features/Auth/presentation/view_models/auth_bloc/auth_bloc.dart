import 'package:bloc/bloc.dart';
import 'package:e_gem/Features/Auth/data/models/user_model.dart';
import 'package:e_gem/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        AuthRepoImpl _repoImpl = AuthRepoImpl();
        if (event is LoginEvent) {
          emit(LoginLoading());
          try {
            /* 
            _repoImpl.logIn(); */
            emit(LoginSuccess());
          } catch (e) {
            emit(LoginFailure(error: e.toString()));
          }
        } else if (event is RegisterEvent) {
          emit(RegisterLoading());
          try {
            _repoImpl.getToken(event.userModel);
            emit(RegisterSuccess());
          } catch (e) {
            emit(RegisterFailure(error: e.toString()));
          }
        }
      },
    );
  }
}
