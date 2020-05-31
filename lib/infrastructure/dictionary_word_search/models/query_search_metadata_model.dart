import 'package:dr_words/domain/dictionary_word_search/entities/query_search_metadata.dart';
import 'package:flutter/foundation.dart';
import 'package:faker/faker.dart';

class QuerySearchMetadataModel extends QuerySearchMetadata {
  const QuerySearchMetadataModel({
    @required int limit,
    @required int offset,
    @required int total,
  }) : super(limit: limit, offset: offset, total: total);

  factory QuerySearchMetadataModel.fromJson(Map<String, dynamic> json) => QuerySearchMetadataModel(
        limit: int.parse(json['limit'].toString()),
        offset: int.parse(json['offset'].toString()),
        total: int.parse(json['total'].toString()),
      );

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'offset': offset,
      'total': total,
    };
  }

  factory QuerySearchMetadataModel.fromFakeData() {
    return QuerySearchMetadataModel(
      limit: faker.randomGenerator.integer(1),
      offset: faker.randomGenerator.integer(1),
      total: faker.randomGenerator.integer(1),
    );
  }
}
