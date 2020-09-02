import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word_search_remote_failure.freezed.dart';

@freezed
abstract class DictionaryWordSearchRemoteFailure with _$DictionaryWordSearchRemoteFailure {
  const factory DictionaryWordSearchRemoteFailure.networkError() = _DictionaryWordSearchRemoteFailureNetworkError;
  const factory DictionaryWordSearchRemoteFailure.serverError() = _DictionaryWordSearchRemoteFailureServerException;
  const factory DictionaryWordSearchRemoteFailure.unexpected() = _DictionaryWordSearchRemoteFailureUnexpected;
}
