class AuthIcons {
  AuthIcons._();
  static final AuthIcons instance = AuthIcons._();

  static const String placeholder = "";
  final String phone = "phone.png".authIcons;
  final String email = "name.png".authIcons;
  final String name = "name.png".authIcons;
  final String lock = "lock.png".authIcons;
  final String arrowDown = "arrow_down.png".authIcons;
}

extension _AuthIconsExtension on String {
  String get authIcons {
    return 'assets/auth_icons/$this';
  }
}