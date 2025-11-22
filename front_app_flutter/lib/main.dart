import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:front_app_flutter/l10n/app_localizations.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
      home: Scaffold(

        appBar: AppBar.new(
          title: const Text('Myメンタルスケール管理'),
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'MyMs管理 menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.scale),
                title: Text('スケール入力'),
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('スケール履歴'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('スケール詳細履歴'),
              ),
            ],
          ),
        ),

        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
