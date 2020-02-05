import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
@injectable
class SharedPreferencesWrapper {
  Future<SharedPreferences> get instance => SharedPreferences.getInstance();
}
