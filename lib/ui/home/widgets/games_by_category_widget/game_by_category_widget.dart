import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_info/ui/widgets/error_widget.dart';
import 'game_by_category_barrel.dart';

class GamesByCategoryWidget extends StatelessWidget {
  const GamesByCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesByCategoryBloc, GamesByCategoryState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? GameByCategorySuccessWidget(
                categoryName: state.categoryName,
                games: state.games,
              )
            : state.status.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.status.isError
                    ? const ErrorGameWidget()
                    : const SizedBox();
      },
    );
  }
}
