import 'package:freezed_annotation/freezed_annotation.dart';

part 'dtos/dictionary_word_entries_exception.freezed.dart';

@freezed
abstract class DictionaryWordEntriesException with _$DictionaryWordEntriesException {
  const factory DictionaryWordEntriesException.serverError() = _DictionaryWordEntriesExceptionServerError;
  const factory DictionaryWordEntriesException.unexpected() = _DictionaryWordEntriesExceptionUnexpected;
}
