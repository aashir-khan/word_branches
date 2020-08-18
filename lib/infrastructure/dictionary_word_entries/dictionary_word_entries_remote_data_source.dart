import 'package:dio/dio.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dictionary_word_entries_exception.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:dr_words/infrastructure/internal/account_details/account_details.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IDictionaryWordEntriesRemoteDataSource, env: [Env.production])
class DictionaryWordEntriesRemoteDataSource implements IDictionaryWordEntriesRemoteDataSource {
  final AccountDetails accountDetails;
  final Dio dio;

  DictionaryWordEntriesRemoteDataSource({
    @required this.accountDetails,
    @required this.dio,
  });

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWord word) async {
    final headers = accountDetails.oxfordAPIDetails['developer'] as Map<String, String>;

    final response = await dio.get('https://od-api.oxforddictionaries.com/api/v2/entries/en-us/${word.id}',
        options: Options(headers: headers));

    if (response.statusCode == 200) {
      final entries = List<HeadwordEntryDto>.from([]);
      response.data['results']
          .forEach((headwordEntry) => entries.add(HeadwordEntryDto.fromJson(headwordEntry as Map<String, dynamic>)));
      return entries.toImmutableList();
    } else if (response.statusCode == 500) {
      throw const DictionaryWordEntriesException.serverError();
    } else {
      throw const DictionaryWordEntriesException.unexpected();
    }
  }
}
