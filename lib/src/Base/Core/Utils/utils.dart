import 'dart:async';
import 'dart:math' as math;

import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/src/Base/Core/Services/Storage/storage_service.dart';
import 'package:mobile/src/Base/Shared/Entities/language.dart';

import '../Services/storage/src/storage_constants.dart';
// TODO : add the most main used functions here !

 class Utils {
  Utils._();
    static Locale get cachedLocale{
      int? value = StorageService<int>().read(stgLang);
      printDM("cached local $value");
     return LanguageData.locale(value ?? 1);
   }
   static Future<void> applyHapticFeedback({bool vibration = false}) async {
    if (vibration) {
      await HapticFeedback.vibrate();
    } else {
      await HapticFeedback.heavyImpact();
    }
  }
  /// Allow you to copy [Text] to clipboard
  static Future<void> copyToClipboard(String text) async {
    // if (text.trim().isEmpty) {
    //   AppSnacks.showSnackNotificationBar(
    //     title: "",
    //     body: "",
    //   );
    //   return;
    // } else {
    //   Clipboard.setData(ClipboardData(text: text)).then((value) {
    //     AppSnacks.showSnackNotificationBar(
    //       title: "تم النسخ بنجاح",
    //       body: text,
    //     );
    //   });
    // }
  }


  /// ------------------------------ Snack -------------------------------------
  /// snackBar

  /// ------------------------------ toast --------------------------------------




  /// gets random number
  static int randomNumber({int nextInt = 1000} ) {
    return math.Random().nextInt(nextInt) + 100;
  }
}


