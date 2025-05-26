import 'package:hive_ce_flutter/adapters.dart';

part 'app_settings.g.dart';

@HiveType(typeId: 0)
class AppSettings extends HiveObject {
  @HiveField(0)
  String localeCode;

  @HiveField(1)
  bool isOpen;
  AppSettings({required this.localeCode, required this.isOpen});
}
