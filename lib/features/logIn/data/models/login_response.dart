

import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  String? message;

  UserData? userdata;

  int? code;
  bool? status;

  LoginResponse(this.message, this.userdata, this.code, this.status);

  factory LoginResponse.fromJson(Map<String, dynamic> json )=>_$LoginResponseFromJson(json);

}

@JsonSerializable()
class UserData {

  String? token;
  @JsonKey(name:'username')
  String UserName;

  UserData(this.token, this.UserName);

  factory UserData.fromJson(Map<String, dynamic>json)=> _$UserDataFromJson(json);

}
