import 'package:booking_app/models/palce.dart';
import 'package:booking_app/screens/details_page.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String image;
  final int days;
  final Place place;

  ImageCard({
    @required this.title,
    @required this.image,
    @required this.days,
    @required this.place,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.of(context).pushNamed(DetailsPage.routeId);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(62, 168, 174, 201),
                offset: Offset(0, 9),
                blurRadius: 14,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  image,
                  height: 260,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(4),
                        alignment: Alignment.center,
                        color: Colors.white54,
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        alignment: Alignment.center,
                        color: Colors.white60,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.today,
                              color: Colors.black,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '$days days',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
