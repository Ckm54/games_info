import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_info/repository/game_repository.dart';
import 'package:games_info/repository/service/game_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(service: GameService()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AllGamesBloc>(
              create: (context) => AllGamesBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(
                GetGames(),
              )
            ),
            BlocProvider<CategoryBloc>(
              create: (context) => CategoryBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(
                GetCategories(),
              ),
            ),
            BlocProvider<GamesCategoryBloc>(
              create: (context) => GamesByCategoryBloc(
                gameRepository: context.read<GameRepository>(),
              )
            )
          ],
          child: HomeLayout(),
        ),
      ),
    );
  }
}