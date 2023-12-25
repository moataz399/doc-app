import 'package:base_project/features/register/data/models/register_request_body.dart';
import 'package:base_project/features/register/logic/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/register_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;

  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());


  void emitRegisterStates(RegisterRequestBody registerRequestBody) async {
    emit(const RegisterState.loading());

    final response = await _registerRepo.register(registerRequestBody);

    response.when(success: (registerResponse) {
      emit(RegisterState.success(registerResponse));
    }, failure: (error) {
      emit(RegisterState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
