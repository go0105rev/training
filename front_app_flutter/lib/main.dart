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

class MenuScaleInput extends StatefulWidget {
  @override
  _MenuScaleInputState createState() => _MenuScaleInputState();
}

class _MenuScaleInputState extends State<MenuScaleInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scale Input'),
      ),
      body: Center(
        child: Text('Scale Input Screen'),
      ),
    );
  }
}

class MenuScaleHistory extends StatefulWidget {
  @override
  _MenuScaleHistoryState createState() => _MenuScaleHistoryState();
}

class _MenuScaleHistoryState extends State<MenuScaleHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scale History'),
      ),
      body: Center(
        child: Text('Scale History Screen'),
      ),
    );
  }
}

class MenuScaleDetail extends StatefulWidget {
  @override
  _MenuScaleDetailState createState() => _MenuScaleDetailState();
}

class _MenuScaleDetailState extends State<MenuScaleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scale Detail History'),
      ),
      body: Center(
        child: Text('Scale Detail History Screen'),
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
                  onTap: () {
                    // Drawer を閉じてから画面遷移
                    Navigator.pop(context); // Drawer を閉じる
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuScaleInput(), // 遷移先 Screen
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text(AppLocalizations.of(context)!.menuScaleHistory),
                  onTap: () {
                    // Drawer を閉じてから画面遷移
                    Navigator.pop(context); // Drawer を閉じる
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuScaleHistory(), // 遷移先 Screen
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text(AppLocalizations.of(context)!.menuScaleDetail),
                  onTap: () {
                    // Drawer を閉じてから画面遷移
                    Navigator.pop(context); // Drawer を閉じる
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuScaleDetail(), // 遷移先 Screen
                      ),
                    );
                  },
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
