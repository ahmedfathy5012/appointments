import 'dart:math';

class RandomGeneratorService {
  RandomGeneratorService._();
  static final instance = RandomGeneratorService._();

  int generateRandomNumber(int max) {
    final _random = Random();
    return _random.nextInt(max);
  }

  String generateRandomString(int length) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#\$%^&*()-_=+[]{}|;:,.<>?';

    final random = Random();
    final buffer = StringBuffer();

    for (var i = 0; i < length; i++) {
      buffer.write(charset[random.nextInt(charset.length)]);
    }

    return buffer.toString();
  }
}
