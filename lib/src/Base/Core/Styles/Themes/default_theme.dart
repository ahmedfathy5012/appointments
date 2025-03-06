part of 'imports_themes.dart';

final ThemeData _defaultTheme = ThemeData(
  /// call method later
  primaryColor: AppColors.get.primary,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  // backgroundColor: AppColors.get.background,
  scaffoldBackgroundColor: AppColors.get.white,
  buttonTheme: ButtonThemeData(
    buttonColor: MainColors.get.main,
    textTheme: ButtonTextTheme.primary,
  ),
  buttonBarTheme: const ButtonBarThemeData(
    alignment: MainAxisAlignment.center,
    buttonTextTheme: ButtonTextTheme.primary,
  ),
  tooltipTheme: getTooltipTheme(),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      color: Colors.transparent,
      border: Border(
        bottom: BorderSide(
          color: AppColors.get.primary,
          width: 2,
        ),
      ),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.get.title,
    ),
  ),
);
