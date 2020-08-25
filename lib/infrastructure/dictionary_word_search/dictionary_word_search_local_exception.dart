import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word_search_local_exception.freezed.dart';

@freezed
abstract class DictionaryWordSearchLocalException with _$DictionaryWordSearchLocalException {
  const factory DictionaryWordSearchLocalException.localDatabaseProcessingException() =
      _LocalDatabaseProcessingException;
}
