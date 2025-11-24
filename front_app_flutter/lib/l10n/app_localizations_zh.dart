// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => '';

  @override
  String get menuScaleInput => '';

  @override
  String get menuScaleHistory => '';

  @override
  String get menuScaleDetail => '';

  @override
  String get scaleInput5 => '';

  @override
  String get scaleInput4 => '';

  @override
  String get scaleInput3 => '';

  @override
  String get scaleInput2 => '';

  @override
  String get scaleInput1 => '';

  @override
  String get backBtn => '';

  @override
  String get frontBtn => '';

  @override
  String get sendBtn => '';

  @override
  String get finishBtn => '';

  @override
  String get ansFinish => '';

  @override
  String get ansNotFinish => '';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class AppLocalizationsZhTw extends AppLocalizationsZh {
  AppLocalizationsZhTw() : super('zh_TW');

  @override
  String get appTitle => '我的心理量表管理';

  @override
  String get menuScaleInput => '心理量表輸入';

  @override
  String get menuScaleHistory => '心理量表査看';

  @override
  String get menuScaleDetail => '詳細心理量表査看';

  @override
  String get scaleInput5 => '非常同意';

  @override
  String get scaleInput4 => '同意';

  @override
  String get scaleInput3 => '稍微同意';

  @override
  String get scaleInput2 => '不同意';

  @override
  String get scaleInput1 => '完全不同意';

  @override
  String get backBtn => '上一題';

  @override
  String get frontBtn => '下一題';

  @override
  String get sendBtn => '送出';

  @override
  String get finishBtn => '完成';

  @override
  String get ansFinish => '已回答';

  @override
  String get ansNotFinish => '未回答';
}
