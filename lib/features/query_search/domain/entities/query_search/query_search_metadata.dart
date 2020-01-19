import 'package:equatable/equatable.dart';

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
}
