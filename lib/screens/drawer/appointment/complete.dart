import 'package:hti_caffee/demodata.dart';
import 'package:hti_caffee/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';

class Complete extends StatefulWidget {
  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: orderImages.length,
          itemBuilder: (context, index) {
            return SubOrderWidget(
                orderImages[index], Color(0xff34ca60), 'Completed');
          }),
    );
  }
}
