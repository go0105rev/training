// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'MyMs Manager';

  @override
  String get menuScaleInput => 'Scale Input';

  @override
  String get menuScaleHistory => 'Scale History';

  @override
  String get menuScaleDetail => 'Scale Detail History';

  @override
  String get scaleInput5 => 'Strongly Agree';

  @override
  String get scaleInput4 => 'Agree';

  @override
  String get scaleInput3 => 'Somewhat Agree';

  @override
  String get scaleInput2 => 'Disagree';

  @override
  String get scaleInput1 => 'Strongly Disagree';

  @override
  String get backBtn => 'Back';

  @override
  String get frontBtn => 'Next';

  @override
  String get sendBtn => 'Submit';

  @override
  String get finishBtn => 'Finish';

  @override
  String get ansFinish => 'Answered';

  @override
  String get ansNotFinish => 'Not answered';
}
