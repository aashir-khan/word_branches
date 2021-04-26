import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_search_local_exception.freezed.dart';

@freezed
abstract class WordSearchLocalException with _$WordSearchLocalException {
  const factory WordSearchLocalException.localDatabaseProcessingException() = _LocalDatabaseProcessingException;
}
