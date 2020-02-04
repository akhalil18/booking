import 'screens/wlcome_page.dart';
import 'package:flutter/material.dart';

import './screens/home_page.dart';
import './screens/details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: WelcomePage(),
      routes: {
        HomePage.routeId: (context) => HomePage(),
        DetailsPage.routeId: (context) => DetailsPage(),
      },
    );
  }
}
