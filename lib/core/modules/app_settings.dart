import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/language/model/app_settings.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<Box<AppSettings>> get appSettingsBox =>
      Hive.openBox<AppSettings>('app_settings');
}
