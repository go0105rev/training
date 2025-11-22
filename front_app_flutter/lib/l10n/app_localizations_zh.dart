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
}
