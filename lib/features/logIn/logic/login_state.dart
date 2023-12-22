import 'package:freezed_annotation/freezed_annotation.dart';

part  'login_state.freezed.dart';


@Freezed()
 class LoginState<T> with _$LoginState<T>  {
  const factory LoginState.initial()=Initial;
  const factory LoginState.loading()=Loading;
  const factory LoginState.success(T data )=Success<T>;
  const factory LoginState.error({required String error })=Error;



}

