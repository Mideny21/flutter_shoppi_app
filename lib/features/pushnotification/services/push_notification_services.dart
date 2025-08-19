import 'dart:async';
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/router/app_router.dart';
import 'package:shoppi/core/router/app_router.gr.dart';
import 'package:shoppi/core/utils/app_logger.dart';
import 'package:shoppi/core/utils/utils.dart';

@pragma('vm:entry-point')
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
        payload: message.data['orderId'].toString(),
      );
    });

    // When notification is tapped and app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      log.i("Message itself: ${message.data.toString()}");
      _handleNavigation(message.data['orderId'].toString());
    });

    // App was terminated
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleNavigation(initialMessage.data['orderId'].toString());
    }

    // 🔹 Initial token
    final token = await _messaging.getToken();
    if (token != null) {
      log.i("Initial FCM Token: $token");
      _sendTokenToBackend(token);
    }

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
      final String orderId = data;
      getIt<AppRouter>().push(PushRoute(orderId: orderId));
    }
  }

  Future<void> _sendTokenToBackend(String token) async {
    log.i("Sending token to backend: $token");
  }

  void dispose() {
    _messageController.close();
  }
}
