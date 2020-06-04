import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_local_failure.freezed.dart';

@freezed
abstract class QuerySearchLocalFailure with _$QuerySearchLocalFailure {
  const factory QuerySearchLocalFailure.localDatabaseProcessingException() =
      _QuerySearchLocalFailureLocalDatabaseProcessingException;
}
