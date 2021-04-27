import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorited_words_exception.freezed.dart';

@freezed
class FavoritedWordsException with _$FavoritedWordsException {
  const factory FavoritedWordsException.localDatabaseProcessingException() = _LocalDatabaseProcessingException;
}
