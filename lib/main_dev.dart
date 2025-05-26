import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/di/setup.dart';
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
  await setup();
  configureDependencies(Environment.dev);
  initializeApp();
}
