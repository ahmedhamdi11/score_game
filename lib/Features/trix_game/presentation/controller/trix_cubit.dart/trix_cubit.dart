import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_game/Core/utils/enums.dart';
import 'package:score_game/Features/trix_game/presentation/controller/trix_cubit.dart/trix_state.dart';

class TrixCubit extends Cubit<TrixState> {
  TrixCubit() : super(TrixState());

  void setGameTypeToIndividual() {
    emit(state.copyWith(selectedType: GamePlayersType.individual));
  }

  void setGameTypeToTeam() {
    emit(state.copyWith(selectedType: GamePlayersType.team));
  }
}
