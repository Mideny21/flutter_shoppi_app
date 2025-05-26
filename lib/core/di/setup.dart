import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:shoppi/features/language/model/app_settings.dart';

Future<void> setup() async {
  await Hive.initFlutter();
  Hive.registerAdapter<AppSettings>(AppSettingsAdapter());
  await Hive.openBox<AppSettings>('app_settings');
}
