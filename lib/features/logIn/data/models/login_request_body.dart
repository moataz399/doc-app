
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody {

  final String email;
  final String password;

  LoginRequestBody(this.email, this.password);


  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

}