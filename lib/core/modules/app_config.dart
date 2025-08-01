import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/onboarding/onbording.dart';

@module
abstract class AppConfigModule {
  @preResolve
  Future<Box<AppSettings>> get appSettingsBox =>
      Hive.openBox<AppSettings>('app_settings');
}
