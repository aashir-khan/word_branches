import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dr_words/core/network/network_info.dart';
import 'package:dr_words/injection/query_search_injection.dart';
import 'package:dr_words/internal/account_details.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Query Search
  querySearchInjectionInit(sl);

  //! Core
  sl.registerLazySingleton(() => AccountDetails());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
}
