import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';

class QuerySearchMetadata extends Equatable {
  final int limit;
  final int offset;
  final int total;

  QuerySearchMetadata({
    this.limit,
    this.offset,
    this.total,
  });

  @override
  List<Object> get props => [limit, offset, total];

  factory QuerySearchMetadata.fromFakeData() {
    return QuerySearchMetadata(
      limit: faker.randomGenerator.integer(1),
      offset: faker.randomGenerator.integer(1),
      total: faker.randomGenerator.integer(1),
    );
  }
}
