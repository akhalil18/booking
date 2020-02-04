import 'package:booking_app/widgets/image_card.dart';
import 'package:flutter/material.dart';

import '../models/palce.dart';
import '../providers/places_provider.dart';

final placesProvider = PlacesProvider();

class ImagesList extends StatelessWidget {
  final List<Place> places = placesProvider.places;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        itemCount: places.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) => ImageCard(
          title: places[i].title,
          image: places[i].image,
          days: places[i].days,
          place: places[i],
        ),
      ),
    );
  }
}
