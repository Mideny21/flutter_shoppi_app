// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello world';

  @override
  String get continue_text => 'Continue';

  @override
  String get choose_language => 'Choose Your Language';

  @override
  String get change_language => 'Change Language';

  @override
  String get select_preferred_language =>
      'Select your preferred language to use \n Shopping';
}
