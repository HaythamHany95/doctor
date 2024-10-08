import 'package:freezed_annotation/freezed_annotation.dart';

part 'specializations_response.g.dart';

@JsonSerializable()
class DoctorsSpecialzationResponse {
  String? message;
  List<Data>? data;
  bool? status;
  int? code;

  DoctorsSpecialzationResponse(
      {this.message, this.data, this.status, this.code});

  factory DoctorsSpecialzationResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorsSpecialzationResponseFromJson(json);
}

@JsonSerializable()
class Data {
  int? id;
  String? name;
  List<Doctor>? doctors;

  Data({this.id, this.name, this.doctors});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Doctor {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  @JsonKey(name: 'appoint_price')
  int? appointPrice;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;

  Doctor(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Governrate? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Governrate {
  int? id;
  String? name;

  Governrate({this.id, this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}
