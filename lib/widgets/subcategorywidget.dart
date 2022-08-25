import 'package:hti_caffee/theme/sharedstyle.dart';
import 'package:flutter/material.dart';

class SubOrderWidget extends StatefulWidget {
  final String img;
  final Color color;
  final String txt;

  SubOrderWidget(this.img, this.color, this.txt);
  @override
  _SubOrderWidgetState createState() => _SubOrderWidgetState();
}

class _SubOrderWidgetState extends State<SubOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(widget.img), fit: BoxFit.fill)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'order Name    ',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                        widget.txt,
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Text('Order Specialize', style: secondaryTextStyle),
              ),
              Row(
                children: [
                  Icon(Icons.attach_money, color: secondaryColor, size: 15.0),
                  Text(' 20\$', style: secondaryTextStyle),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
