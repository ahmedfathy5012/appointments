part of 'imports_themes.dart';

final ThemeData _lightTheme =  _defaultTheme.copyWith(
  brightness: Brightness.light,
  appBarTheme: getAppBarTheme(isDark: false),
  colorScheme: GetColorScheme.light,

);
