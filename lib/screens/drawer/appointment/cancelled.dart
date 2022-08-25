import 'package:hti_caffee/demodata.dart';
import 'package:hti_caffee/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';

class Cancelled extends StatefulWidget {
  @override
  _CancelledState createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: orderImages.length,
          itemBuilder: (context, index) {
            return SubOrderWidget(
                orderImages[index], Color(0xfff63866), 'Cancelled');
          }),
    );
  }
}
