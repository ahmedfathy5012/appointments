class Illustrations {
  Illustrations._();
  static final Illustrations instance = Illustrations._();

  final String placeholder = "";
  final String key = "key.png".icons;
  final String graduate = "graduate.png".icons;
  final String lock = "lock.png".icons;
  final String success = "success.png".icons;
  final String homeHeader = "home_header.png".icons;
  final String notFound = "not_found.png".icons;
}

extension _IconsExtension on String {
  String get icons {
    return 'assets/illustrations/$this';
  }
}
