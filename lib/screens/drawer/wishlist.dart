import 'package:hti_caffee/demodata.dart';
import 'package:hti_caffee/widgets/order.dart';
import 'package:hti_caffee/widgets/searchicon.dart';
import 'package:hti_caffee/theme/sharedstyle.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Wishlisted orders', style: primaryTextStyle),
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
