//
// Generated file. Do not edit.
//

// ignore_for_file: lines_longer_than_80_chars

import 'package:audioplayer_web/audioplayer_web.dart';
import 'package:connectivity_for_web/connectivity_for_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  AudioplayerPlugin.registerWith(registrar);
  ConnectivityPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
