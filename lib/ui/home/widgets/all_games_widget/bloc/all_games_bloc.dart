import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_info/repository/game_repository.dart';

import '../../../../../repository/models/model_barrel.dart';

part 'all_games_state.dart';
part 'all_games_event.dart';

class AllGamesBloc extends Bloc<AllGamesEvent, AllGamesState> {
  AllGamesBloc({
    required this.gameRepository,
  }) : super(const AllGamesState()) {
    on<GetGames>(_mapGetGamesEventToState);
  }

  final GameRepository gameRepository;

  void _mapGetGamesEventToState(
      GetGames event, Emitter<AllGamesState> emit) async {
    try {
      emit(state.copyWith(status: AllGamesStatus.loading));
      final games = await gameRepository.getGames();
      emit(state.copyWith(
        status: AllGamesStatus.success,
        games: games,
      ));
    } catch (error) {
      emit(state.copyWith(status: AllGamesStatus.error));
    }
  }
}
