// ignore_for_file: missing_required_param, unused_local_variable

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_search_results_model_fake.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuerySearchResultsModelFakeAdapter extends TypeAdapter<QuerySearchResultsModelFake> {
  @override
  final typeId = 0;

  @override
  QuerySearchResultsModelFake read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuerySearchResultsModelFake();
  }

  @override
  void write(BinaryWriter writer, QuerySearchResultsModelFake obj) {
    writer..writeByte(0);
  }
}
