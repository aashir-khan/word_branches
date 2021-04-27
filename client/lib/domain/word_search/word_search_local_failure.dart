import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_search_local_failure.freezed.dart';

@freezed
class WordSearchLocalFailure with _$WordSearchLocalFailure {
  const factory WordSearchLocalFailure.localDatabaseProcessingFailure() = _LocalDatabaseProcessingFailure;
}
