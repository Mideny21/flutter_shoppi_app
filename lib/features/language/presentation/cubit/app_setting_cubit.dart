import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppi/features/language/model/app_settings.dart';

@injectable
class AppSettingsCubit extends Cubit<AppSettings> {
  final Box<AppSettings> _box;

  AppSettingsCubit()
    : _box = Hive.box<AppSettings>('app_settings'),
      super(_getInitialState());

  static AppSettings _getInitialState() {
    return Hive.box<AppSettings>('app_settings').get(
      'settings',
      defaultValue: AppSettings(localeCode: 'en', isOpen: false),
    )!;
  }

  void changeLanguage(String langCode) {
    final updated = AppSettings(localeCode: langCode, isOpen: state.isOpen);
    _box.put('settings', updated);
    emit(updated);
  }

  void markOnboardingComplete() {
    final updated = AppSettings(localeCode: state.localeCode, isOpen: true);
    _box.put('settings', updated);
    emit(updated);
  }
}
