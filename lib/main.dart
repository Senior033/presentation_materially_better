import 'package:final_app/demo_tools/theme_switcher.dart';
import 'package:final_app/master_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      childBuilder: (BuildContext context, ThemeData theme) {
        return MaterialApp(
          title: 'Materially Better',
          theme: theme,
          home: MasterScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
