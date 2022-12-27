import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_info/ui/home/widgets/all_games_widget/all_games_success_widget.dart';
import 'package:games_info/ui/home/widgets/all_games_widget/bloc/all_games_bloc.dart';

class AllGamesWidget extends StatelessWidget {
  const AllGamesWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllGamesBloc, AllGamesState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? AllGamesSuccessWidget(
                title: title,
                games: state.games.results,
              )
            : state.status.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.status.isError
                    ? ErrorGameWidget()
                    : const SizedBox();
      },
    );
  }
}
