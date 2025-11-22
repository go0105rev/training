import 'package:flutter/material.dart';

/// メンタルスケール履歴画面
class MenuScaleHistory extends StatefulWidget {
  const MenuScaleHistory({super.key});

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
