import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Shared/Entities/language.dart';

class LanguageModel extends Language{
  LanguageModel(
      {
        int? id,
        String? flag,
        String? lagTitle,
        Locale? locale,
      }
      ):super(
        id: id,
        flag: flag,
        langTitle: lagTitle,
        locale: locale!
  );

}