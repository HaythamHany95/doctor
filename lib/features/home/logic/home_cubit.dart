import 'package:doctor/features/home/data/repository/home_repository.dart';
import 'package:doctor/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit(this._homeRepository) : super(const HomeState.initial());

  Future<void> getDocotorsSpecialition() async {
    emit(const HomeState.specializationLoading());

    final response = await _homeRepository.getDocotorsSpecialition();

    response.when(
      success: (specializationResponse) {
        emit(HomeState.specializationSuccess(
            doctorsSpecialzationResponse: specializationResponse));
      },
      failure: (error) {
        emit(HomeState.specializationError(errorHandler: error));
      },
    );
  }
}
