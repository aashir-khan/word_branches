import 'dart:convert';

import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IDictionaryWordSearchRemoteDataSource, env: [Env.development])
class DictionaryWordSearchRemoteDataSourceFake implements IDictionaryWordSearchRemoteDataSource {
  final SharedPreferences sharedPreferences;

  DictionaryWordSearchRemoteDataSourceFake({@required this.sharedPreferences});

  static const dictionaryWordDto = 'dictionary_word_dto';

  @override
  Future<KtList<DictionaryWordDto>> getDictionaryWordSearchResults({
    String query,
  }) async {
    final rawStoredData = sharedPreferences.getStringList(dictionaryWordDto) ?? [];

    final parsedStoredData =
        rawStoredData.map((str) => DictionaryWordDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();

    final filteredWordsDtos = parsedStoredData.where((word) => word.label.startsWith(query)).toImmutableList();
    return Future.delayed(const Duration(milliseconds: 1), () => filteredWordsDtos);
  }
}
