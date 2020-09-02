import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_word_search_remote_exception.freezed.dart';

@freezed
abstract class DictionaryWordSearchRemoteException with _$DictionaryWordSearchRemoteException {
  const factory DictionaryWordSearchRemoteException.serverError() = _DictionaryWordSearchRemoteExceptionServerError;
  const factory DictionaryWordSearchRemoteException.unexpected() = _DictionaryWordSearchRemoteExceptionUnexpected;
}
