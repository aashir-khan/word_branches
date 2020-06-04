import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_search_remote_failure.freezed.dart';

@freezed
abstract class QuerySearchRemoteFailure with _$QuerySearchRemoteFailure {
  const factory QuerySearchRemoteFailure.networkError() = _QuerySearchRemoteFailureNetworkError;
  const factory QuerySearchRemoteFailure.noResultsFound() = _QuerySearchRemoteFailureNoResultsFound;
  const factory QuerySearchRemoteFailure.serverError() = _QuerySearchRemoteFailureServerException;
}
