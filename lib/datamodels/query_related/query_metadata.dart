class QueryMetadata {
  String limit;
  String offset;
  String operation;
  String schema;
  String total;

  QueryMetadata({
    this.limit,
    this.offset,
    this.operation,
    this.schema,
    this.total,
  });

  factory QueryMetadata.fromJson(Map<String, dynamic> json) {
    return QueryMetadata(
      limit: json['limit'],
      offset: json['offset'],
      operation: json['operation'],
      schema: json['schema'],
      total: json['total'],
    );
  }
}
