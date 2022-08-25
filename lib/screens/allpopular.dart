import 'package:hti_caffee/demodata.dart';
import 'package:hti_caffee/theme/sharedStyle.dart';
import 'package:hti_caffee/widgets/order.dart';
import 'package:hti_caffee/widgets/searchicon.dart';
import 'package:flutter/material.dart';

class AllPopular extends StatefulWidget {
  @override
  _AllPopularState createState() => _AllPopularState();
}

class _AllPopularState extends State<AllPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Popular Doctors', style: primaryTextStyle),
        iconTheme: IconThemeData(color: primaryColor, size: 30.0),
        actions: [SearchButton()],
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: orderImages.length,
          itemBuilder: (context, index) {
            return order(orderImages[index]);
          },
        ),
      ),
    );
  }
}
