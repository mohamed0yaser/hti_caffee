import 'package:hti_caffee/demodata.dart';
import 'package:hti_caffee/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';

class Upcoming extends StatefulWidget {
  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: orderImages.length,
          itemBuilder: (context, index) {
            return SubOrderWidget(
                orderImages[index], Color(0xffecbb15), 'Upcoming');
          }),
    );
  }
}
