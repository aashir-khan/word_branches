import 'package:flutter/foundation.dart';

class BaseModel extends ChangeNotifier {
  bool _isBusy = false;

  bool get isBusy => _isBusy;

  void setIsBusy(bool busyValue) {
    _isBusy = busyValue;
    notifyListeners();
  }
}
