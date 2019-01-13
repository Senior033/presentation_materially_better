import 'package:flutter/material.dart';

class ThemeSwitcher extends StatefulWidget {
  static ThemeSwitcherState of(BuildContext context) {
    return context.ancestorStateOfType(TypeMatcher<ThemeSwitcherState>());
  }

  ThemeSwitcher({
    this.childBuilder,
  });

  final Widget Function(BuildContext, ThemeData) childBuilder;

  @override
  ThemeSwitcherState createState() => ThemeSwitcherState();
}

class ThemeSwitcherState extends State<ThemeSwitcher> {
  Brightness _brightness = Brightness.dark;
  Color _accentColor = Colors.yellow;

  set brightness(Brightness brightness) {
//    print('Setting brightness to $brightness');
    setState(() {
      _brightness = brightness;
    });
  }

  set accentColor(Color accentColor) {
//    print('Changing accent color to $accentColor');
    setState(() {
      _accentColor = accentColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.childBuilder(
      context,
      ThemeData(
        brightness: _brightness,
        primaryColorBrightness: _brightness,
        primaryColor: _accentColor,
        accentColor: _accentColor,
        toggleableActiveColor: _accentColor,
      ),
    );
  }
}
