import '../models/palce.dart';

class PlacesProvider {
  int ab = 3;
  final List<Place> _places = [
    Place(title: 'Paris', days: 15, image: 'assets/images/paris.jpg'),
    Place(title: 'Malaysia', days: 10, image: 'assets/images/malaysia.jpg'),
    Place(title: 'Dubai', days: 30, image: 'assets/images/dubai.jpg'),
    Place(title: 'Spane', days: 7, image: 'assets/images/spane.jpg'),
  ];

  List<Place> get places {
    return _places;
  }
}
