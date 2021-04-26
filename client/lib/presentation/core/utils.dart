import 'package:flutter/foundation.dart';

class PresentationCoreUtils {
  static String path(String str) => kIsWeb ? 'assets/$str' : str;
}
