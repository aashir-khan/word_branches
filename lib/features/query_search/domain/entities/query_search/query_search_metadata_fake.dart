import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_metadata.dart';
import 'package:faker/faker.dart';

class QuerySearchMetadataFake extends QuerySearchMetadata {
  QuerySearchMetadataFake({
    int limit,
    int offset,
    int total,
  }) : super(
          limit: limit,
          offset: offset,
          total: total,
        );

  factory QuerySearchMetadataFake.fromFakeData() {
    return QuerySearchMetadataFake(
      limit: faker.randomGenerator.integer(1),
      offset: faker.randomGenerator.integer(1),
      total: faker.randomGenerator.integer(1),
    );
  }
}
