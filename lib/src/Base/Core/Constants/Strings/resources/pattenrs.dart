class Patterns {
  Patterns._();
  static final Patterns instance = Patterns._();

  final String placeholder = "";
  final String pattern = "pattern.png".icons;
  final String techPattern = "tech_pattern.png".icons;
  final String teacherPattern = "teacher_pattern.png".icons;
}

extension _IconsExtension on String {
  String get icons {
    return 'assets/patterns/$this';
  }
}
