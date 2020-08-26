import 'package:dartz/dartz.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/core/i_network_info.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_local_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_remote_data_source.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_repository.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_local_exception.dart';
import 'package:dr_words/infrastructure/dictionary_word_search/dictionary_word_search_remote_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IDictionaryWordSearchRepository)
class DictionaryWordSearchRepository implements IDictionaryWordSearchRepository {
  final IDictionaryWordSearchRemoteDataSource remoteDataSource;
  final IDictionaryWordSearchLocalDataSource localDataSource;
  final INetworkInfo networkInfo;

  DictionaryWordSearchRepository({
    @required this.remoteDataSource,
    @required this.localDataSource,
    @required this.networkInfo,
  });

  @override
  Future<Either<DictionaryWordSearchRemoteFailure, KtList<DictionaryWord>>> getDictionaryWordSearchResults(
      {String query, Map<String, dynamic> options = const {}}) async {
    if (await networkInfo.isConnected) {
      try {
        final wordsDto = await remoteDataSource.getDictionaryWordSearchResults(query: query);
        final domainWords = wordsDto.asList().map((dto) => dto.toDomain()).toList();
        return Right(domainWords.toImmutableList());
      } on DictionaryWordSearchRemoteException catch (e) {
        return e.when(
            noResultsFound: () => const Left(DictionaryWordSearchRemoteFailure.noResultsFound()),
            serverError: () => const Left(DictionaryWordSearchRemoteFailure.serverError()),
            unexpected: () => const Left(DictionaryWordSearchRemoteFailure.unexpected()));
      }
    } else {
      return const Left(DictionaryWordSearchRemoteFailure.networkError());
    }
  }

  @override
  Future<Either<DictionaryWordSearchLocalFailure, KtList<DictionaryWord>>> getRecentlySearchedWords() async {
    try {
      final wordsDto = await localDataSource.getRecentlySearchedWords();
      return Right(wordsDto.asList().toList().map((word) => word.toDomain()).toImmutableList());
    } on DictionaryWordSearchLocalException catch (e) {
      return e.when(
        localDatabaseProcessingException: () =>
            const Left(DictionaryWordSearchLocalFailure.localDatabaseProcessingFailure()),
      );
    }
  }

  @override
  Future<Either<DictionaryWordSearchLocalFailure, DictionaryWord>> addNewRecentlySearchedWord(
      DictionaryWord newWordToAdd) async {
    try {
      final savedDtoWord = await localDataSource.addNewRecentlySearchedWord(DictionaryWordDto.fromDomain(newWordToAdd));
      return Right(savedDtoWord.toDomain());
    } on DictionaryWordSearchLocalException catch (e) {
      return e.when(
        localDatabaseProcessingException: () =>
            const Left(DictionaryWordSearchLocalFailure.localDatabaseProcessingFailure()),
      );
    }
  }

  @override
  Future<Either<DictionaryWordSearchLocalFailure, DictionaryWord>> deleteRecentlySearchedWord(
      DictionaryWord wordToDelete) async {
    try {
      final deletedWord = await localDataSource.deleteRecentlySearchedWod(DictionaryWordDto.fromDomain(wordToDelete));
      return Right(deletedWord.toDomain());
    } on DictionaryWordSearchLocalException catch (e) {
      return Left(handleLocalException(e));
    }
  }
}

DictionaryWordSearchLocalFailure handleLocalException(DictionaryWordSearchLocalException exception) {
  return exception.when(
    localDatabaseProcessingException: () => const DictionaryWordSearchLocalFailure.localDatabaseProcessingFailure(),
  );
}
