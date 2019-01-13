import 'package:final_app/demo_content/colors.dart';
import 'package:final_app/demo_tools/theme_switcher.dart';
import 'package:flutter/material.dart';

class ColorsScreen extends StatefulWidget {
  @override
  _ColorsScreenState createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8.0),
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: themeColors.map((Color color) {
          return ColorGridButton(
            color: color,
          );
        }).toList(),
      ),
    );
  }
}

class ColorGridButton extends StatelessWidget {
  ColorGridButton({
    this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ThemeSwitcher.of(context).accentColor = color;
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 6.0,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0x22000000),
              offset: Offset(0.0, 4.0),
              blurRadius: 4.0,
            ),
          ],
        ),
      ),
    );
  }
}
