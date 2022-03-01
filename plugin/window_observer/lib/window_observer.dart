
import 'dart:async';

import 'package:flutter/services.dart';

class WindowObserver {
  static const MethodChannel _channel = MethodChannel('window_observer');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
