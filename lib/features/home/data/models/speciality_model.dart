import 'package:freezed_annotation/freezed_annotation.dart';

part 'speciality_model.g.dart';

@JsonSerializable()
class SpecialityModel {
  String? message;
  @JsonKey(name: 'data')
  SpecialityData? data;

  bool? status;
  int? code;

  SpecialityModel(this.message, this.data, this.status, this.code);

  factory SpecialityModel.fromJson(Map<String, dynamic> json) =>
      _$SpecialityModelFromJson(json);
}

@JsonSerializable()
class SpecialityData {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  DoctorsData? doctors;

  SpecialityData(this.id, this.name, this.doctors);

  factory SpecialityData.fromJson(Map<String, dynamic> json) =>
      _$SpecialityDataFromJson(json);
}

@JsonSerializable()
class DoctorsData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? address;
  String? description;
  String? degree;
  String? specialization;
  int? appointPrice;
  String? startTime;
  String? endTime;

  DoctorsData(
      this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.appointPrice,
      this.startTime,
      this.endTime);

  factory DoctorsData.fromJson(Map<String, dynamic> json) =>
      _$DoctorsDataFromJson(json);
}
