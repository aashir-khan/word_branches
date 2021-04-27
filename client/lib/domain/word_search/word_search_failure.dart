import 'package:freezed_annotation/freezed_annotation.dart';

import 'word_search_local_failure.dart';
import 'word_search_remote_failure.dart';

part 'word_search_failure.freezed.dart';

@freezed
class WordSearchFailure with _$WordSearchFailure {
  const factory WordSearchFailure.local(WordSearchLocalFailure failure) = _WordSearchLocalFailure;
  const factory WordSearchFailure.remote(WordSearchRemoteFailure failure) = _WordSearchRemoteFailure;
}
