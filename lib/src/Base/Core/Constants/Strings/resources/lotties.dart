class Lotties {
  Lotties._();
  static final Lotties instance = Lotties._();

  final String success = "success.json".lotties;
}

extension _LottiesExtension on String {
  String get lotties {
    return 'assets/lotties/$this';
  }
}
