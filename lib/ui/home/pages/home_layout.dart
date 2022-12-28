import 'package:flutter/material.dart';
import 'package:games_info/ui/home/widgets/header_title/header_title.dart';
import 'package:games_info/ui/widgets/container_body.dart';

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
        children: const [
          HeaderTitle(),
          SizedBox(height: 40.0),
          ContainerBody(
            children: [
              CategoriesWidget(),
              GamesByCategoryWidget(),
              AllGamesWidget(title: 'All games')
            ]
          ),
        ],
      ),
    );
  }
}