import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_exception.freezed.dart';

@freezed
abstract class DictionaryWordSearchException with _$DictionaryWordSearchException {
  const factory DictionaryWordSearchException.noResultsFound() = _DictionaryWordSearchExceptionNoResultsFound;
  const factory DictionaryWordSearchException.serverError() = _DictionaryWordSearchExceptionServerError;
  const factory DictionaryWordSearchException.unexpected() = _DictionaryWordSearchExceptionUnexpected;
}
