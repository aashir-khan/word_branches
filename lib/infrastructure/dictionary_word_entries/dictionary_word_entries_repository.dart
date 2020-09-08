import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/headword_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/dictionary_word_entries_failure.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_repository.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dictionary_word_entries_exception.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IDictionaryWordEntriesRepository)
class DictionaryWordEntriesRepository implements IDictionaryWordEntriesRepository {
  final INetworkInfo networkInfo;
  final IDictionaryWordEntriesRemoteDataSource remoteDataSource;

  DictionaryWordEntriesRepository({
    @required this.networkInfo,
    @required this.remoteDataSource,
  });

  @override
  Future<Either<DictionaryWordEntriesFailure, KtList<HeadwordEntry>>> getWordEntries(DictionaryWord word) async {
    if (await networkInfo.isConnected) {
      try {
        final entries = await remoteDataSource.getWordEntries(DictionaryWordDto.fromDomain(word));
        final domainEntries = entries.map((entryDto) => entryDto.toDomain());
        return Right(domainEntries);
      } on DictionaryWordEntriesException catch (e) {
        return e.when(
          serverError: () => const Left(DictionaryWordEntriesFailure.serverError()),
          unexpected: () => const Left(DictionaryWordEntriesFailure.unexpected()),
        );
      }
    } else {
      return const Left(DictionaryWordEntriesFailure.networkError());
    }
  }
}
