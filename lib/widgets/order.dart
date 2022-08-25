import 'package:hti_caffee/theme/sharedstyle.dart';
import 'package:hti_caffee/widgets/order.dart';
import 'package:hti_caffee/demodata.dart';
import 'package:flutter/material.dart';

class order extends StatefulWidget {
  final String img;

  order(this.img);

  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 150.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: NetworkImage(widget.img), fit: BoxFit.fill)),
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.red,
              iconSize: 30.0,
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'coffee Name',
                  style: primaryTextStyle,
                ),
                Text(
                  '**** 4.9',
                  style: primaryColorTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
