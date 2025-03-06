class LocalResponse {
  final String message;
  final dynamic data;
  final int statusCode;

  LocalResponse({
    required this.message,
    required this.data,
    required this.statusCode,
  });
}