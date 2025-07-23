import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/core/app_flavor/flavor_config.dart';
import 'package:shoppi/core/di/injection.dart';
import 'package:shoppi/core/di/setup.dart';
import 'package:shoppi/main.dart';

void main() async {
  FlavorConfig(
    flavor: Flavor.prod,
    values: FlavorValues(
      apiBaseUrl: "https://www.prod.com/api/",
      appIcon: '',
      appName: 'Shopping',
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await configureDependencies(Environment.prod);

  intializeApp();
}
