import 'package:flutter/material.dart';
import 'menu_scale_input.dart';
import 'menu_scale_history.dart';
import 'menu_scale_detail.dart';
import 'package:front_app_flutter/l10n/app_localizations.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                        builder: (_) => MenuScaleInput(), // 遷移先 Screen
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
                        builder: (_) => MenuScaleHistory(), // 遷移先 Screen
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
                        builder: (_) => MenuScaleDetail(), // 遷移先 Screen
                      ),
                    );
                  },
                ),
              ],
            );
          }),
        );
  }
}
