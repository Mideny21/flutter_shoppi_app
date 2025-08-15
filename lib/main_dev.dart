import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/di/setup.dart';
import 'package:shoppi/features/pushnotification/push_notification.dart';
import 'package:shoppi/firebase_options.dart';
import 'package:shoppi/main.dart';

import 'core/app_flavor/flavors.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.dev,
    values: FlavorValues(
      apiBaseUrl: "https://apibaseurl-dev.com",
      appIcon: "assets/images/app_icon_dev.png",
      appName: "Shoppi [Dev]",
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await setup();
  await configureDependencies(Environment.dev);
  initializeApp();
}
