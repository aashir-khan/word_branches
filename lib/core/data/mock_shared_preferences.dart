import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
@RegisterAs(SharedPreferences, env: Env.test)
class MockSharedPreferences extends Mock implements SharedPreferences {}
