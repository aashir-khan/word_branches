import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:floor/floor.dart';

@dao
abstract class DictionaryWordDao {
  @Query('SELECT * FROM DictionaryWordDto')
  Stream<List<DictionaryWordDto>> watchAllFavoritedWords();

  @delete
  Future<void> deleteDictionaryWord(DictionaryWordDto dictionaryWord);
  @insert
  Future<void> insertDictionaryWord(DictionaryWordDto dictionaryWord);
}
