import 'package:dr_words/core/enums/device_screen_type.dart';
import 'package:flutter/widgets.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  final double deviceWidth = mediaQuery.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreenType.desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.tablet;
  }

  return DeviceScreenType.mobile;
}
