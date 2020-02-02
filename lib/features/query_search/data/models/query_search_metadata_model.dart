import 'package:flutter/foundation.dart';

import '../../domain/entities/query_search/query_search_metadata.dart';

class QuerySearchMetadataModel extends QuerySearchMetadata {
  QuerySearchMetadataModel({
    @required int limit,
    @required int offset,
    @required int total,
  }) : super(limit: limit, offset: offset, total: offset);

  factory QuerySearchMetadataModel.fromJson(Map<String, dynamic> json) => QuerySearchMetadataModel(
        limit: int.parse(json['limit'].toString()),
        offset: int.parse(json['offset'].toString()),
        total: int.parse(json['total'].toString()),
      );

  Map<String, dynamic> toJson() {
    return {
      'limit': limit.toString(),
      'offset': offset.toString(),
      'total': total.toString(),
    };
  }
}
