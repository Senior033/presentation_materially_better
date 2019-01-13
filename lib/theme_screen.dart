import 'package:final_app/demo_content/images.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends StatefulWidget {
  @override
  _ThemeScreenState createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: drawerArtLoadingHeight,
            color: Theme.of(context).accentColor,
            child: Image.network(
              drawerArt,
              height: drawerArtLoadingHeight,
              fit: BoxFit.cover,
              color: Theme.of(context).accentColor,
              colorBlendMode: BlendMode.color,
            ),
          ),
        ],
      ),
    );
  }
}
