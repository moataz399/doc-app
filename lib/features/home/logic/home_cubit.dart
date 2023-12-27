import 'package:base_project/features/home/data/models/speciality_model.dart';
import 'package:base_project/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/home_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());


  SpecialityModel ? specialityModel;

  void emitSpecialityStates() async {
    emit(const HomeState.loading());

    final response = await _homeRepo.getSpeciality();
    response.when(success: (specialityModel) {

      emit(HomeState.success(response));
    }, failure: (error) {
      emit(HomeState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
