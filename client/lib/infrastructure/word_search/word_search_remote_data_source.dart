import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:word_branches/config/env/env_variables.dart';

import '../../domain/word_search/i_word_search_remote_data_source.dart';
import '../core/dtos/dictionary_word_dto.dart';
import 'dtos/headword_entry_dto.dart';
import 'word_search_remote_exception.dart';

@LazySingleton(as: IWordSearchRemoteDataSource, env: [Environment.prod, Environment.dev])
class WordSearchRemoteDataSource implements IWordSearchRemoteDataSource {
  final Dio dio;
  final EnvVariables envVariables;

  WordSearchRemoteDataSource({
    this.dio,
    this.envVariables,
  });

  @override
  Future<KtList<DictionaryWordDto>> getWordSearchResults({String query}) async {
    final response = await dio.get(
      '/api/word-search?q=$query',
      options: Options(headers: envVariables.oxfordApiHeaders),
    );

    if (response.statusCode == 200) {
      final List<DictionaryWordDto> words = [];
      response.data['results'].forEach((word) => words.add(DictionaryWordDto.fromJson(word as Map<String, dynamic>)));
      return words.toImmutableList();
    } else if (response.statusCode == 404) {
      return emptyList();
    } else if (response.statusCode == 500) {
      throw const WordSearchRemoteException.serverError();
    } else {
      throw const WordSearchRemoteException.unexpected();
    }
  }

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word) async {
    final response =
        await dio.get('/api/word-entries/${word.id}', options: Options(headers: envVariables.oxfordApiHeaders));

    if (response.statusCode == 200) {
      final List<HeadwordEntryDto> entries = [];
      response.data['results']
          .forEach((headwordEntry) => entries.add(HeadwordEntryDto.fromJson(headwordEntry as Map<String, dynamic>)));
      return entries.toImmutableList();
    } else if (response.statusCode == 500) {
      throw const WordSearchRemoteException.serverError();
    } else {
      throw const WordSearchRemoteException.unexpected();
    }
  }
}
