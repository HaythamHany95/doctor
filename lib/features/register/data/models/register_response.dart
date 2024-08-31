import 'package:json_annotation/json_annotation.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  String? message;
  @JsonKey(name: 'data')
  RegisterUserData? registerUserData;
  bool? status;
  int? code;

  RegisterResponse(
      {this.message, this.registerUserData, this.status, this.code});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@JsonSerializable()
class RegisterUserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  RegisterUserData({this.token, this.userName});

  factory RegisterUserData.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserDataFromJson(json);
}
