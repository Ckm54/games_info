part 'category_bloc.dart';

enum CategoryStatus { initial, success, error, loading, selected }

extension CategoryStatusX on CategoryStatus {
  bool get isInitial => this == CategoryStatus.initial;
  bool get isSuccess => this == CategoryStatus.success;
  bool get isError => this == CategoryStatus.error;
  bool get isLoading => this == CategoryStatus.loading;
  bool get isSelected => this == CategoryStatus.selected;
}
