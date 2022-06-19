import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_one_screen.dart';
import 'package:navigation/screen/route_three_screen.dart';
import 'package:navigation/screen/route_two_screen.dart';

void main() {
  runApp(MaterialApp(
    // home: HomeScreen(),
    initialRoute: '/',
    // route 를 사용하는 방법을 namedRoute 라고 한다.
    routes: {
      '/': (context) => HomeScreen(),
      '/one': (context) => RouteOneScreen(),
      '/two' : (context) => RouteTwoScreen(),
      '/three' : (context) => RouteThreeScreen(),
    },
  ),
  );
}
