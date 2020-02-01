import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:get_it/get_it.dart';

void querySearchInjectionInit(GetIt sl) {
  // Bloc
  sl.registerFactory(
    () => QuerySearchBloc(
      addNewRecentlySearchedWord: sl(),
      getQuerySearchResults: sl(),
      getRecentlySearchedWords: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => AddNewRecentlySearchedWord(sl()));
  sl.registerLazySingleton(() => GetQuerySearchResults(sl()));
  sl.registerLazySingleton(() => GetRecentlySearchedWords(sl()));

  // Repositories
  sl.registerLazySingleton<QuerySearchRepository>(
    () => QuerySearchRepositoryImpl(
      localDataSource: sl(),
      remoteDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<QuerySearchRemoteDataSource>(
    () => QuerySearchRemoteDataSourceImpl(
      accountDetails: sl(),
      client: sl(),
    ),
  );

  sl.registerLazySingleton<QuerySearchLocalDataSource>(
    () => QuerySearchLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );
}
