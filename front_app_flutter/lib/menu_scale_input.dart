import 'package:flutter/material.dart';

/// メンタルスケール入力画面
class MenuScaleInput extends StatefulWidget {
  const MenuScaleInput({super.key});

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
