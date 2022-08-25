import 'package:flutter/material.dart';
import 'package:hti_caffee/theme/sharedstyle.dart';

class SearchButton extends StatefulWidget {
  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      color: primaryColor,
      iconSize: 30.0,
      icon: Icon(Icons.search),
    );
  }
}
