import 'package:dictionary_app/core/models/i_result.dart';
import 'package:equatable/equatable.dart';

class BasePagination with EquatableMixin {
  final int currentPage;
  final int totalPages;
  final int itemsPerPage;
  final int totalItems;
  final List<IResult> result;

  BasePagination({
    required this.currentPage,
    required this.totalPages,
    required this.itemsPerPage,
    required this.totalItems,
    required this.result,
  });

  static BasePagination resolvePagination({
    required Map<String, dynamic> data,
    required IResult type,
  }) {
    return BasePagination(
      currentPage: data['page'] as int,
      totalPages: data['pages'] as int,
      itemsPerPage: data['per_page'] as int,
      totalItems: data['total'] as int,
      result: (data['items'] as List)
          .map(
            (json) => IResult.fromJson(
              data: json,
              type: type,
            ),
          )
          .toList(),
    );
  }

  @override
  List<Object?> get props => [
        currentPage,
        totalItems,
        totalPages,
        itemsPerPage,
        result,
      ];
}
