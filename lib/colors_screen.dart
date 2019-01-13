import 'package:final_app/demo_content/colors.dart';
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
          return Container(
            color: color,
          );
        }).toList(),
      ),
    );
  }
}
