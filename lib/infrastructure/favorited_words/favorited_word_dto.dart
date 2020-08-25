// import 'package:dr_words/domain/favorited_words/favorited_word.dart';
// import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'favorited_word_dto.freezed.dart';
// part 'favorited_word_dto.g.dart';

// @freezed
// abstract class FavoritedWordDto with _$FavoritedWordDto {
//   factory FavoritedWordDto({
//     @required DictionaryWordDto word,
//   }) = _FavoritedWordDto;

//   factory FavoritedWordDto.fromDomain(FavoritedWord favoritedWord) {
//     return FavoritedWordDto(
//       word: DictionaryWordDto.fromDomain(favoritedWord.word),
//     );
//   }

//   factory FavoritedWordDto.fromJson(Map<String, dynamic> json) => _$FavoritedWordDtoFromJson(json);
// }

// extension FavoritedWordDtoX on FavoritedWordDto {
//   FavoritedWord toDomain() {
//     return FavoritedWord(
//       word: word.toDomain(),
//     );
//   }
// }
