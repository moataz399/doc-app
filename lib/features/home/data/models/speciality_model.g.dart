// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speciality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialityModel _$SpecialityModelFromJson(Map<String, dynamic> json) =>
    SpecialityModel(
      json['message'] as String?,
      json['data'] == null
          ? null
          : SpecialityData.fromJson(json['data'] as Map<String, dynamic>),
      json['status'] as bool?,
      json['code'] as int?,
    );

Map<String, dynamic> _$SpecialityModelToJson(SpecialityModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };

SpecialityData _$SpecialityDataFromJson(Map<String, dynamic> json) =>
    SpecialityData(
      json['id'] as int?,
      json['name'] as String?,
      json['doctors'] == null
          ? null
          : DoctorsData.fromJson(json['doctors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpecialityDataToJson(SpecialityData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

DoctorsData _$DoctorsDataFromJson(Map<String, dynamic> json) => DoctorsData(
      json['id'] as int?,
      json['name'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['photo'] as String?,
      json['address'] as String?,
      json['description'] as String?,
      json['degree'] as String?,
      json['specialization'] as String?,
      json['appointPrice'] as int?,
      json['startTime'] as String?,
      json['endTime'] as String?,
    );

Map<String, dynamic> _$DoctorsDataToJson(DoctorsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'specialization': instance.specialization,
      'appointPrice': instance.appointPrice,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
