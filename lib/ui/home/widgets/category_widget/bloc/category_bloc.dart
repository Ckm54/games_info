// handles all the arising events
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_info/repository/game_repository.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required this.gameRepository,
  }) : super(const CategoryState()) {
    on<GetCategories>(_mapCategoriesEventToState);
    on<SelectCategory>(_mapSelectCategoryEventToState);
  }

  final GameRepository gameRepository;

  void _mapCategoriesEventToState(
      GetCategories event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: CategoryStatus.loading));

    try {
      final genres = await gameRepository.getGenres();
      emit(state.copyWith(
        status: CategoryStatus.success,
        categories: genres,
      ));
    } catch (e) {
      print(StackTrace);
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }

  void _mapSelectedCategoryEventToState(
      SelectCategory event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(
      status: CategoryStatus.selected,
      idSelected: event.idSelected,
    ));
  }
}
