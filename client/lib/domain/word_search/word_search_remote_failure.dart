import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_search_remote_failure.freezed.dart';

@freezed
class WordSearchRemoteFailure with _$WordSearchRemoteFailure {
  const factory WordSearchRemoteFailure.networkError() = _WordSearchRemoteFailureNetworkError;
  const factory WordSearchRemoteFailure.serverError() = _WordSearchRemoteFailureServerException;
  const factory WordSearchRemoteFailure.unexpected() = _WordSearchRemoteFailureUnexpected;
}
