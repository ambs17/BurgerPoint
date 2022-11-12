import 'package:flutter/material.dart';
import 'views/Home.dart';
import 'views/DarkTheme.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';

void main() async {
  await Settings.init(cacheProvider: SharePreferenceCache());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueChangeObserver<bool>(
      cacheKey: DarkTheme.keyDarkMode,
      defaultValue: false,
      builder: (_, isDarkMode, __) => MaterialApp(
        title: "BURGER's POINT",
        theme: isDarkMode
            ? ThemeData.dark().copyWith(
                indicatorColor: Colors.white,
                //primarySwatch: Colors.amber,
                primaryColor: Colors.amber,
                accentColor: Colors.white,
              )
            : ThemeData.light().copyWith(
                indicatorColor: Colors.white,
                /*primarySwatch: Colors.amber,*/
                primaryColor: Colors.amber,
                accentColor: Colors.black,
              ),
        home: new Home(),
      ),
    );
  }
}
