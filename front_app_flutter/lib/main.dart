import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:front_app_flutter/l10n/app_localizations.dart';
import 'dart:async';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Myメンタルスケール管理',
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // 2秒後にMainScreenに遷移
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainApp()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.psychology,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            Text(
              'MyMs Manager',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('zh', 'TW'),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
        Locale('zh', 'TW'),
      ],
      home: Scaffold(

        appBar: AppBar.new(
          title: const Text('Myメンタルスケール管理'),
        ),

        drawer: Drawer(
          child: Builder(builder: (context) { return 
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    ),
                  child: Text(
                    AppLocalizations.of(context)!.appTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.scale),
                  title: Text(AppLocalizations.of(context)!.menuScaleInput),
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text(AppLocalizations.of(context)!.menuScaleHistory),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text(AppLocalizations.of(context)!.menuScaleDetail),
                ),
              ],
            );
          }),
        ),

        body: Center(
          child: Text('MyMs Manager'),
        ),
      ),
    );
  }
}
