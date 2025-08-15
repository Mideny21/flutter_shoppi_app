import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_router.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/core/utils/utils.dart';

//@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // await Firebase.initializeApp();

  // final plugin = NotificationHelper.createPlugin((payload) async {
  //   // Background click handling won't work here directly
  //   // Store payload for main isolate to pick up if needed
  // });

  // await NotificationHelper.showNotification(
  //   plugin,
  //   message.hashCode,
  //   message.notification?.title,
  //   message.notification?.body,
  //   payload: message.data['route'],
  // );
}

@singleton
class PushNotificationService {
  final FirebaseMessaging _messaging;
  final FlutterLocalNotificationsPlugin _localNotifications;

  final _messageController = StreamController<RemoteMessage>.broadcast();

  PushNotificationService(this._messaging, this._localNotifications);

  @postConstruct
  Future<void> init() async {
    await _requestPermission();

    // Foreground messages
    FirebaseMessaging.onMessage.listen((message) {
      _messageController.add(message);

      NotificationHelper.showNotification(
        _localNotifications,
        message.hashCode,
        message.notification?.title,
        message.notification?.body,
        payload: message.data.toString(),
      );
    });

    // When notification is tapped and app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _handleNavigation(message.data.toString());
    });

    // App was terminated
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleNavigation(initialMessage.data.toString());
    }
    // 🔹 Initial token
    final token = await _messaging.getToken();
    if (token != null) {
      log.i("Initial FCM Token: $token");
      _sendTokenToBackend(token);
    }

    // 🔹 Listen for token refresh
    _messaging.onTokenRefresh.listen((newToken) {
      log.i("Refreshed FCM Token: $newToken");
      _sendTokenToBackend(newToken);
    });
  }

  Future<void> _requestPermission() async {
    await _messaging.requestPermission();
  }

  void _handleNavigation(String? data) {
    if (data != null) {
      // You can use Navigator, GoRouter, or AutoRoute
      // Example with GoRouter:
      getIt<AppRouter>().push(PushRoute());
    }
  }

  /// ✅ Handles both initial & refreshed token
  Future<void> _sendTokenToBackend(String token) async {
    // Replace with API call to save token for current user
    log.i("Sending token to backend: $token");
  }

  void dispose() {
    _messageController.close();
  }
}
