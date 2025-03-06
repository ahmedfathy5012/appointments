import 'dart:convert';

import 'package:flutter/services.dart';

class Base64Service {
  Base64Service._();
  static final instance = Base64Service._();
  String encodeToBase64(String inputString) {
    List<int> bytes =
        utf8.encode(inputString); // Convert string to Uint8List (byte array)
    String base64String = base64.encode(bytes); // Encode to Base64
    return base64String;
  }

  String decodeFromBase64(String base64String) {
    Uint8List bytes =
        base64.decode(base64String); // Decode from Base64 to Uint8List
    String originalString = utf8.decode(bytes); // Convert Uint8List to string
    return originalString;
  }
}
