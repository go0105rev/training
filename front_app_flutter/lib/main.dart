import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
