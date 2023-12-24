import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  String name;
  String email;

  String phone;
  String gender;
  String password;
  @JsonKey(name: 'password_confirmation')
  String passwordConfirmation;

  RegisterRequestBody(
      {required this.name,
      required this.email,
      required this.phone,
      required this.gender,
      required this.password,
      required this.passwordConfirmation});

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
