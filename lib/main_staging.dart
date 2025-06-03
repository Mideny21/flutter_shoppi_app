import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/di/setup.dart';

import 'core/app_flavor/flavors.dart';
import 'main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.staging,
    values: FlavorValues(
      apiBaseUrl: "https://apibaseurl-staging.com",
      appIcon: "assets/images/app_icon_staging.png",
      appName: "Shoppi [Staging]",
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await setup();

  await configureDependencies(Environment.test);

  initializeApp();
}
