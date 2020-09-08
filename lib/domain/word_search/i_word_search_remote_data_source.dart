import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IWordSearchRemoteDataSource {
  Future<KtList<WordSearchDto>> getWordSearchResults({String query});
}
