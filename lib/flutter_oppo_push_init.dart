
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterOppoPushInit {
  static const MethodChannel _channel = MethodChannel('flutter_oppo_push_init');


  static Future<String?> get initPush async {
    final String? result = await _channel.invokeMethod('init');
    return result;
  }
}
