import 'package:base_project/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
}
