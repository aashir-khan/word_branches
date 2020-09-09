import 'package:dr_words/domain/word_search/word_search_local_failure.dart';
import 'package:dr_words/domain/word_search/word_search_remote_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_search_failure.freezed.dart';

@freezed
abstract class WordSearchFailure with _$WordSearchFailure {
  const factory WordSearchFailure.local(WordSearchLocalFailure failure) = _WordSearchLocalFailure;
  const factory WordSearchFailure.remote(WordSearchRemoteFailure failure) = _WordSearchRemoteFailure;
}
