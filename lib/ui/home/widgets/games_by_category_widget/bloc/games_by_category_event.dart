// event to get all games filtered by category and add name of category to show as title of the list

part of 'games_by_category_bloc.dart';

class GamesByCategoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetGamesByCategory extends GamesByCategoryEvent {
  GetGamesByCategory({
    required this.idSelected,
    required this.categoryName,
  });

  final int idSelected;
  final String categoryName;

  @override
  List<Object?> get props => [idSelected, categoryName];
}
