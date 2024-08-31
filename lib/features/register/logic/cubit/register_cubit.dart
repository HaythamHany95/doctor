import 'package:doctor/features/register/data/models/register_request_body.dart';
import 'package:doctor/features/register/data/repository/register_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepository _registerRepository;
  RegisterCubit(this._registerRepository)
      : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> register() async {
    emit(const RegisterState.loading());

    final response = await _registerRepository.register(
      RegisterRequestBody(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text),
    );

    response.when(success: (success) {
      emit(RegisterState.success(success));
    }, failure: (failure) {
      emit(RegisterState.error(message: failure.apiErrorModel.message ?? ''));
    });
  }
}
