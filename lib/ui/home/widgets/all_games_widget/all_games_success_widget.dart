import 'package:flutter/material.dart';
import 'package:games_info/repository/models/result.dart';

class AllGamesSuccessWidget extends StatelessWidget {
  const AllGamesSuccessWidget({
    Key? key,
    required this.games,
    required this.title,
  }) : super(key: key);

  final List<Result> games;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
