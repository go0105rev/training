import 'package:flutter/material.dart';
import 'app_drawer.dart';

/// メイン画面
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar.new(
          title: const Text('Myメンタルスケール管理'),
        ),
      drawer: const AppDrawer(),
        body: Center(
          child: Text('MyMs Manager'),
        ),
    );
  }
}
