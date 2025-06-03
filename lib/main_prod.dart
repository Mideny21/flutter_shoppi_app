import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/di/setup.dart';
import 'package:shoppi/main.dart';

import 'core/app_flavor/flavors.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.prod,
    values: FlavorValues(
      apiBaseUrl: "https://apibaseurl-prod.com",
      appIcon: "assets/images/app_icon_prod.png",
      appName: "Shoppi",
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await configureDependencies(Environment.prod);
  initializeApp();
}
