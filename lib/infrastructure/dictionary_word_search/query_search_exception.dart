import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_exception.freezed.dart';

@freezed
abstract class QuerySearchException with _$QuerySearchException {
  const factory QuerySearchException.noResultsFound() = _QuerySearchExceptionNoResultsFound;
  const factory QuerySearchException.serverError() = _QuerySearchExceptionServerError;
  const factory QuerySearchException.unexpected() = _QuerySearchExceptionUnexpected;
}
