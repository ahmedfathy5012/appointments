import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  void initNotifications() async {
    tz.initializeTimeZones();

    const AndroidInitializationSettings androidSettings =
    AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings settings =
    InitializationSettings(android: androidSettings);

    flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()?.requestNotificationsPermission();

    await flutterLocalNotificationsPlugin.initialize(settings);
  }

  void scheduleDailyNotification({
    required int id ,
    required String title,
    required String subtitle,
    required int hour,
    required int minute,
  }) async {
    printDM(hour.toString());
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      subtitle,
      _nextInstanceOfTime(hour, minute),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'daily_notification',
          'Daily Notification',
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
      matchDateTimeComponents: DateTimeComponents.time, // يشغل الإشعار يوميًا في نفس التوقيت
      uiLocalNotificationDateInterpretation:
      UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.alarmClock,
    );
  }

  static Future<void> showNotification() async {
    const AndroidNotificationDetails androidDetails =
    AndroidNotificationDetails(
      'reminder_channel',
      'Reminders',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails details =
    NotificationDetails(android: androidDetails);
    FlutterLocalNotificationsPlugin _notificationsPlugin =
    FlutterLocalNotificationsPlugin();
    await _notificationsPlugin.show(
      0,
      'Reminder',
      'Don\'t forget your pet\'s task!',
      details,
    );
  }


  cancelNotificationSchedule(id)async{
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  tz.TZDateTime _nextInstanceOfTime(int hour, int minute) {
    final now = tz.TZDateTime.now(tz.getLocation('Africa/Cairo'));
    var scheduledDate = tz.TZDateTime(tz.getLocation('Africa/Cairo'), now.year, now.month, now.day, hour, minute);

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(Duration(days: 1)); // لو الوقت فات، يضبطه ليوم غد
    }
    return scheduledDate;
  }
}
