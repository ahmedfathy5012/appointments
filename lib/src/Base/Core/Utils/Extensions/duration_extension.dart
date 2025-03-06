extension DurationExtension on int {
  Duration get toHours => Duration(hours: this);
  Duration get toMinutes => Duration(minutes: this);
  Duration get toSeconds => Duration(seconds: this);
  Duration get toMilliseconds => Duration(milliseconds: this);
  Duration get toMicroseconds => Duration(microseconds: this);


}