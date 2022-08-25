import 'package:flutter/material.dart';
import 'package:hti_caffee/theme/sharedstyle.dart';

class PopularOrderWidget extends StatefulWidget {
  final String image;

  PopularOrderWidget(this.image);

  @override
  _PopularOrderWidgetState createState() => _PopularOrderWidgetState();
}

class _PopularOrderWidgetState extends State<PopularOrderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.favorite, color: secondaryColor, size: 18.0),
              Text(
                '    4.9',
                style: secondaryTextStyle,
              ),
              Icon(Icons.star, color: Colors.amber, size: 20.0),
            ],
          ),
          CircleAvatar(
            minRadius: 35.0,
            maxRadius: 35.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(widget.image),
          ),
          Text(
            'coffee',
            style: primaryTextStyle,
          )
        ],
      ),
    );
  }
}
