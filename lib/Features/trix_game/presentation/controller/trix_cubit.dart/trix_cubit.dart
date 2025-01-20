import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_state.dart';

class TrixCubit extends Cubit<TrixState> {
  TrixCubit() : super(TrixState());

  void toggleTrixAndComplex(TrixGameType trixGameType) {
    emit(state.copyWith(trixGameType: trixGameType));
  }

  void toggleGamePlayersType(GamePlayersType selectedType) {
    emit(state.copyWith(selectedType: selectedType));
  }
}
