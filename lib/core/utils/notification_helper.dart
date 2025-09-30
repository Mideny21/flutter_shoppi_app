import 'package:flutter_local_notifications/flutter_local_notifications.dart';

typedef NotificationTapCallback = Future<void> Function(String? payload);

class NotificationHelper {
  static const AndroidInitializationSettings _androidInit =
      AndroidInitializationSettings('@drawable/ic_launcher');

  static const DarwinInitializationSettings _iosInit =
      DarwinInitializationSettings();

  static const AndroidNotificationDetails _androidDetails =
      AndroidNotificationDetails(
        'shoppi_channel', // channel id
        'High Importance Notifications', // channel name
        channelDescription: 'Default notification channel for Shoppi',
        importance: Importance.max,
        priority: Priority.high,
        icon: '@drawable/ic_launcher',
      );

  static const DarwinNotificationDetails _iosDetails =
      DarwinNotificationDetails();

  static const NotificationDetails notificationDetails = NotificationDetails(
    android: _androidDetails,
    iOS: _iosDetails,
  );

  static FlutterLocalNotificationsPlugin createPlugin(
    NotificationTapCallback onTap,
  ) {
    final plugin = FlutterLocalNotificationsPlugin();

    // Create Android Notification Channel
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'shoppi_channel', // must match channel id above
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );

    plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);

    plugin.initialize(
      const InitializationSettings(android: _androidInit, iOS: _iosInit),
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        await onTap(response.payload);
      },
    );

    return plugin;
  }

  /// 🔹 Show a local notification
  static Future<void> showNotification(
    FlutterLocalNotificationsPlugin plugin,
    int id,
    String? title,
    String? body, {
    String? payload,
  }) async {
    await plugin.show(id, title, body, notificationDetails, payload: payload);
  }
}
