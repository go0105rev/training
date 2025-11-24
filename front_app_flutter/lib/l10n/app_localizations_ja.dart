// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'MyMs管理';

  @override
  String get menuScaleInput => 'スケール入力';

  @override
  String get menuScaleHistory => 'スケール履歴';

  @override
  String get menuScaleDetail => 'スケール詳細履歴';

  @override
  String get scaleInput5 => '非常にそうだ';

  @override
  String get scaleInput4 => 'そうだ';

  @override
  String get scaleInput3 => 'ややそうだ';

  @override
  String get scaleInput2 => 'あまり違う';

  @override
  String get scaleInput1 => '全く違う';

  @override
  String get backBtn => '前へ';

  @override
  String get frontBtn => '次へ';

  @override
  String get sendBtn => '送信';

  @override
  String get finishBtn => '完了';

  @override
  String get ansFinish => '回答済み';

  @override
  String get ansNotFinish => '未回答';
}
