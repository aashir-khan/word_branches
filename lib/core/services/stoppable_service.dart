import 'package:flutter/material.dart';

class StoppableService {
  bool _serviceStoped = false;
  bool get serviceStopped => _serviceStoped;

  @mustCallSuper
  Future<void> stop() {
    _serviceStoped = true;
    return Future.value();
  }

  @mustCallSuper
  Future<void> start() {
    _serviceStoped = false;
    return Future.value();
  }
}
