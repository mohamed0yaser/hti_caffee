import 'package:flutter/material.dart';
import 'package:hti_caffee/screens/homepage.dart';
import 'package:hti_caffee/theme/sharedstyle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.light),
    );
  }
}
