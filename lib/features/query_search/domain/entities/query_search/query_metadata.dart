import 'package:faker/faker.dart';

class QueryMetadata {
  String limit;
  String offset;
  String operation;
  String provider;
  String schema;
  String sourceLanguage;
  String total;

  QueryMetadata({
    this.limit,
    this.offset,
    this.operation,
    this.provider,
    this.schema,
    this.sourceLanguage,
    this.total,
  });

  QueryMetadata.fromJson(Map<String, dynamic> json) {
    limit = json['limit'];
    offset = json['offset'];
    operation = json['operation'];
    provider = json['provider'];
    schema = json['schema'];
    sourceLanguage = json['sourceLanguage'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    data['operation'] = this.operation;
    data['provider'] = this.provider;
    data['schema'] = this.schema;
    data['sourceLanguage'] = this.sourceLanguage;
    data['total'] = this.total;
    return data;
  }

  QueryMetadata.fromFakeData(
      {Map<String, dynamic> customFieldValues = const {}}) {
    Map<String, dynamic> defaultFieldValues = {
      'limit': faker.randomGenerator.integer(100).toString(),
      'offset': faker.randomGenerator.integer(100).toString(),
      'operation': faker.lorem.sentence(),
      'provider': faker.lorem.sentence(),
      'schema': faker.lorem.sentence(),
      'sourceLanguage': faker.lorem.sentence(),
      'total': faker.randomGenerator.integer(100).toString()
    };

    limit = customFieldValues['limit'] ?? defaultFieldValues['limit'];
    offset = customFieldValues['offset'] ?? defaultFieldValues['offset'];
    operation =
        customFieldValues['operation'] ?? defaultFieldValues['operation'];
    provider = customFieldValues['provider'] ?? defaultFieldValues['provider'];
    schema = customFieldValues['schema'] ?? defaultFieldValues['schema'];
    sourceLanguage = customFieldValues['sourceLanguage'] ??
        defaultFieldValues['sourceLanguage'];
    total = customFieldValues['total'] ?? defaultFieldValues['total'];
  }
}
