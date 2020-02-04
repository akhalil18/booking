import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final IconData iconData;
  final String title;

  CardIcon({
    Key key,
    @required this.iconData,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            color: Colors.red[50],
            child: IconButton(
              icon: Icon(iconData),
              color: Colors.red[400],
              onPressed: () {},
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
