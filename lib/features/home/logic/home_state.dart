import 'package:doctor/core/networking/api_error_handler.dart';
import 'package:doctor/features/home/data/models/specializations_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
      {required DoctorsSpecialzationResponse
          doctorsSpecialzationResponse}) = SpecializationSuccess;
  const factory HomeState.specializationError(
      {required ErrorHandler errorHandler}) = SpecializationError;
}
