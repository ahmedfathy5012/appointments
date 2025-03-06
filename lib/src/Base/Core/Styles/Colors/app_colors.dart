import 'package:mobile/src/Base/Core/Styles/Colors/Interface/color_interface.dart';
import 'package:mobile/src/Base/Core/Styles/Colors/Parts/imports_colors.dart';
import 'package:flutter/material.dart';

class MainColors {
  MainColors._();
  static final get = MainColors._();

  Color main = AppColors.get.main;
  Color secondary = AppColors.get.blueBlack;

  void setMainColor(Color color) {
    main = color;
  }

  void setSecondaryColor(Color color) {
    secondary = color;
  }
}

class AppColors {
  AppColors._();
  static ColorInterface get = LightColor();

  static void changeColor({required bool isDark, required Function update}) {
    get = isDark ? DarkColor() : LightColor();
    update();
  }
}
