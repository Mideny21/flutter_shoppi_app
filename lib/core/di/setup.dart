import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:shoppi/features/onboarding/model/model.dart';

Future<void> setup() async {
  await Hive.initFlutter();
  Hive.registerAdapter<AppSettings>(AppSettingsAdapter());
}
