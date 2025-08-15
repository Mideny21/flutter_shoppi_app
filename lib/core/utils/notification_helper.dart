import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shoppi/core/utils/app_logger.dart';

typedef NotificationTapCallback = Future<void> Function(String? payload);

class NotificationHelper {
  static const AndroidInitializationSettings _androidInit =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  static const DarwinInitializationSettings _iosInit =
      DarwinInitializationSettings();

  static InitializationSettings initSettings(NotificationTapCallback onTap) {
    return InitializationSettings(android: _androidInit, iOS: _iosInit);
  }

  static final AndroidNotificationDetails _androidDetails =
      AndroidNotificationDetails(
        'shoppi', // channel id
        'Default', // channel name visible in Android settings
        channelDescription: 'Default notification channel for Shoppi',
        importance: Importance.high,
        priority: Priority.high,
        icon: '@mipmap/ic_launcher',
      );

  static const DarwinNotificationDetails _iosDetails =
      DarwinNotificationDetails();

  static final NotificationDetails notificationDetails = NotificationDetails(
    android: _androidDetails,
    iOS: _iosDetails,
  );

  static FlutterLocalNotificationsPlugin createPlugin(
    NotificationTapCallback onTap,
  ) {
    final plugin = FlutterLocalNotificationsPlugin();
    plugin.initialize(
      initSettings(onTap),
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        log.i('Notification tapped: ${response.id}');
        await onTap(response.payload);
      },
    );
    return plugin;
  }

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
