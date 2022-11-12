import 'package:flutter/material.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'Privacy.dart';
class AccountPage extends StatelessWidget {
  static const keyLanguage = 'key-Language';

  @override
  Widget build(BuildContext context) =>
      SimpleSettingsTile(
        title: 'Account Settings',
        
        subtitle: 'Privacy, Language',
        leading: Icon(Icons.person, color: Colors.amber),
        child: SettingsScreen(
          title: 'Account Settings',
          children: <Widget>[
            buildPrivacy(context),
            buildLanguage(context),
          ],
        ),
      );

  Widget buildPrivacy(BuildContext context) =>
      SimpleSettingsTile(
        title: 'Privacy',
        subtitle: '',
        leading: Icon(Icons.lock, color: Colors.amber),
        onTap: () {Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Privacy(),
            )
        );},
      );


  Widget buildLanguage(BuildContext context) =>
      DropDownSettingsTile(
        settingKey: keyLanguage,
        title: 'Language',
        selected: 1,
        values: <int, String>{
          1: 'UK English',
          2: 'US English',
        },
        onChange: (language) {
          /*NOOP */
        },
      );
}