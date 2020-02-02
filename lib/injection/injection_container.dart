import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:dr_words/core/services/fake_database_service.dart';
import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/injection/query_search_injection.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //! External - that must be done right away
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);

  //! Features - Query Search
  await querySearchInjectionInit(sl);

  //! Core
  sl.registerLazySingleton(() => AccountDetails());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // Services
  sl.registerLazySingleton(() => NavigationService());
  sl.registerLazySingleton(() => FakeDatabaseService());

  //! External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
