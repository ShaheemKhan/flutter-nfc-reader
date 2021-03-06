import 'dart:async';
import 'package:flutter/services.dart';

class FlutterNfcReader {
  static const MethodChannel _channel =
      const MethodChannel('flutter_nfc_reader');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Object> get read async {
    final result = await _channel.invokeMethod('NfcRead');
    return result;
  }

  static Future<bool> get stop async {
    final bool stopped = await _channel.invokeMethod('NfcStop');
    return stopped;
  }
}
