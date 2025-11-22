import 'package:flutter/material.dart';

class MenuScaleDetail extends StatefulWidget {
  const MenuScaleDetail({super.key});

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
