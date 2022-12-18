import 'model_barrel.dart';

import 'package:json_annotation/json_annotation.dart';

part 'filters_year.g.dart';

@JsonSerializable()
class FiltersYear {
  FiltersYear({
    this.from,
    this.to,
    this.filter,
    this.decade,
    this.years,
    this.noFollow,
    this.count,
  });

  final int? from;
  final int? to;
  final String? filter;
  final int? decade;
  final List<YearGame>? years;
  final bool? noFollow;
  final int? count;

  factory FiltersYear.fromJson(Map<String, dynamic> json) =>
      _$FiltersYearFromJson(json);
}
