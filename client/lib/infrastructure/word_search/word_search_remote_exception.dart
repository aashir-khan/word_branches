import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_search_remote_exception.freezed.dart';

@freezed
class WordSearchRemoteException with _$WordSearchRemoteException {
  const factory WordSearchRemoteException.serverError() = _WordSearchRemoteExceptionServerError;
  const factory WordSearchRemoteException.unexpected() = _WordSearchRemoteExceptionUnexpected;
}
