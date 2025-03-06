class Boards {
  Boards._();
  static final Boards instance = Boards._();

  final String placeholder = "";
  final String board1 = "board1.png".boards;

}

extension _BoardsExtension on String {
  String get boards {
    return 'assets/boards/$this';
  }
}
