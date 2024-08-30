// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      message: json['message'] as String?,
      registerUserData: json['data'] == null
          ? null
          : RegisterUserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.registerUserData,
      'status': instance.status,
      'code': instance.code,
    };

RegisterUserData _$RegisterUserDataFromJson(Map<String, dynamic> json) =>
    RegisterUserData(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

Map<String, dynamic> _$RegisterUserDataToJson(RegisterUserData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
