class Icons {
  Icons._();
  static final Icons instance = Icons._();

  final String arrowDown = "arrow_down.png".icons;
  final String arrowLeft = "arrow-left.png".icons;
  final String backAr = "back_ar.png".icons;
  final String noConnectionIllustration = "noConnectionIllustration.png".icons;
  final String errorIllustration = "errorIllustration.png".icons;


  final String clock = "clock.png".icons;
  final String medicine = "medicine.png".icons;
  final String check = "check.png".icons;
}

extension _IconsExtension on String {
  String get icons {
    return 'assets/icons/$this';
  }
}
