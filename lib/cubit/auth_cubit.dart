import 'package:bloc/bloc.dart';
import 'package:bwa_airplane/models/user_model.dart';
import 'package:bwa_airplane/services/auth_services.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthServices()
          .signUp(email: email, password: password, name: name, hobby: hobby);

      emit(AuthSuccess(user));
    } catch (e) {
      return emit(AuthFailed(e.toString()));
    }
  }
}
