import 'package:doctor/features/login/data/models/login_request_body.dart';
import 'package:doctor/features/login/data/repository/login_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final result = await _loginRepository.login(loginRequestBody);
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.error(
            message: error.apiErrorModel.message ?? 'login went wrong'));
      },
    );
  }
}
