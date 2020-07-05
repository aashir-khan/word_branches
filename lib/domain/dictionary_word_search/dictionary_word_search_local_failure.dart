import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_local_failure.freezed.dart';

@freezed
abstract class DictionaryWordSearchLocalFailure with _$DictionaryWordSearchLocalFailure {
  const factory DictionaryWordSearchLocalFailure.localDatabaseProcessingFailure() = _LocalDatabaseProcessingFailure;
}
