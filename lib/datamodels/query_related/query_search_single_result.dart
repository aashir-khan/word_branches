import 'package:flutter/foundation.dart';

class QuerySearchSingleResult {
  String id;
  String label;
  String matchType;
  String region;

  QuerySearchSingleResult(
      {@required this.id, this.label, this.matchType, this.region});

  factory QuerySearchSingleResult.fromJson(Map<String, dynamic> json) {
    return QuerySearchSingleResult(
        id: json['id'],
        label: json['label'],
        matchType: json['matchType'],
        region: json['region']);
  }
}
