import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:flutter/foundation.dart';

class QuerySearchSingleResultModel extends QuerySearchSingleResult {
  QuerySearchSingleResultModel({
    @required String id,
    @required String label,
  }) : super(id: id, label: label);

  factory QuerySearchSingleResultModel.fromJson(Map<String, dynamic> json) =>
      QuerySearchSingleResultModel(
        id: json['id'],
        label: json['label'],
      );
}
