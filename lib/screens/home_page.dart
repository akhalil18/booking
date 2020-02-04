import 'package:flutter/material.dart';

import '../widgets/card_list.dart';
import '../widgets/card_icon.dart';

class HomePage extends StatefulWidget {
  static const routeId = '/home-page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("favorite"),
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Hello',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          ),
                          TextSpan(
                            text: ', what are you looking for',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CardIcon(
                        iconData: Icons.home,
                        title: 'Accomodation',
                      ),
                      CardIcon(
                        iconData: Icons.airplanemode_active,
                        title: 'Flight',
                      ),
                      CardIcon(
                        iconData: Icons.explore,
                        title: 'Adventure',
                      ),
                      CardIcon(
                        iconData: Icons.directions_bike,
                        title: 'Flight',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Best Experience',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ImagesList(),
                  SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     IconButton(icon: Icon(Icons.home), onPressed: () {})
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
