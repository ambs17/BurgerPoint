
import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

class DarkTheme extends StatelessWidget {
  static const keyDarkMode = 'key-dark-mode';
  @override
  Widget build(BuildContext context) => SimpleSettingsTile(
        title: 'Theme',
        subtitle: 'Dark mode is in BETA phase.',
        leading: Icon(Icons.dark_mode_outlined, color: Colors.amber),
        child: SettingsScreen(
          title: 'Theme',
          children: <Widget>[
            buildDarkMode(),
          ],
        ),
      );
  Widget buildDarkMode() => SwitchSettingsTile(
        settingKey: keyDarkMode,
        leading: Icon(Icons.dark_mode, color: Colors.amber),
        title: 'Dark Mode',
        onChange: (_) {},
      );
}
