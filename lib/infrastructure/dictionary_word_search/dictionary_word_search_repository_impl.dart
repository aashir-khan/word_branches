import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_local_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_repository.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DictionaryWordSearchRepository)
class DictionaryWordSearchRepositoryImpl implements DictionaryWordSearchRepository {
  final DictionaryWordSearchRemoteDataSource remoteDataSource;
  final DictionaryWordSearchLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  DictionaryWordSearchRepositoryImpl({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<DictionaryWordSearchRemoteFailure, List<DictionaryWord>>> getDictionaryWordSearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        final wordsDto = await remoteDataSource.getDictionaryWordSearchResults(query: query);
        final domainWords = wordsDto.asList().toList().map((dto) => dto.toDomain()).toList();
        return Right(domainWords);
      } on DictionaryWordSearchRemoteFailure catch (e) {
        return e.when(
          networkError: () => const Left(DictionaryWordSearchRemoteFailure.networkError()),
          noResultsFound: () => const Left(DictionaryWordSearchRemoteFailure.noResultsFound()),
          serverError: () => const Left(DictionaryWordSearchRemoteFailure.serverError()),
        );
      }
    } else {
      return const Left(DictionaryWordSearchRemoteFailure.networkError());
    }
  }

  @override
  Future<Either<DictionaryWordSearchLocalFailure, List<DictionaryWord>>> getRecentlySearchedWords() async {
    try {
      final wordsDto = await localDataSource.getRecentlySearchedWords();
      return Right(wordsDto.asList().toList().map((word) => word.toDomain()).toList());
    } on LocalDatabaseProcessingException {
      return const Left(DictionaryWordSearchLocalFailure.localDatabaseProcessingFailure());
    }
  }

  @override
  Future<Either<DictionaryWordSearchLocalFailure, DictionaryWord>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd) async {
    try {
      final savedDtoWord = await localDataSource.addNewRecentlySearchedWord(DictionaryWordDto.fromDomain(newWordToAdd));
      return Right(savedDtoWord.toDomain());
    } on LocalDatabaseProcessingException {
      return const Left(DictionaryWordSearchLocalFailure.localDatabaseProcessingFailure());
    }
  }
}
