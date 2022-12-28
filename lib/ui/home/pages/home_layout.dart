import 'package:flutter/material.dart';

import '../widgets/all_games_widget/all_games_widget.dart';
import '../widgets/category_widget/categories_widget.dart';
import '../widgets/games_by_category_widget/game_by_category_widget.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderTitle(),
          const SizedBox(height: 40.0),
          ContainerBody(
            children: [
              const CategoriesWidget(),
              const GamesByCategoryWidget(),
              const AllGamesWidget(title: 'All games')
            ]
          ),
        ],
      ),
    );
  }
}