import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorited_words_failure.freezed.dart';

@freezed
abstract class FavoritedWordsFailure with _$FavoritedWordsFailure {
  const factory FavoritedWordsFailure.localDatabaseProcessingFailure() = _LocalDatabaseProcessingFailure;
}
