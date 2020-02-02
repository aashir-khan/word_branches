import 'package:dr_words/features/query_search/data/datasources/query_search_local_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_fake.dart';
import 'package:dr_words/features/query_search/data/datasources/remote/query_search_remote_data_source_impl.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model_fake.dart';
import 'package:dr_words/features/query_search/data/repositories/query_search_repository_impl.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/presentation/bloc/query_search_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

const _USE_FAKE_IMPLEMENTATION = false;

Future<void> querySearchInjectionInit(GetIt sl) async {
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
    () => _USE_FAKE_IMPLEMENTATION
        ? QuerySearchRemoteDataSourceFake()
        : QuerySearchRemoteDataSourceImpl(
            accountDetails: sl(),
            client: sl(),
          ),
  );

  sl.registerLazySingleton<QuerySearchLocalDataSource>(
    () => QuerySearchLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );
  // External
  Hive.registerAdapter(QuerySearchResultsModelFakeAdapter());
  // final querySearchResultsModelFakeBox = await Hive.openBox(QuerySearchResultsModelFake.DB_IDENTIFIER);
  // await querySearchResultsModelFakeBox.clear();
}
