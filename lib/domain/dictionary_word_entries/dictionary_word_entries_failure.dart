import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word_entries_failure.freezed.dart';

@freezed
abstract class DictionaryWordEntriesFailure with _$DictionaryWordEntriesFailure {
  const factory DictionaryWordEntriesFailure.serverError() = _ServerError;
  const factory DictionaryWordEntriesFailure.unexpected() = _Unexpected;
}
