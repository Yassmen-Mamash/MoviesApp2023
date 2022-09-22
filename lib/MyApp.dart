import 'package:flutter/material.dart';
import 'package:news_api/home_screen.dart';
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomeScreen.routeName:(_)=>HomeScreen()},
      initialRoute:
      HomeScreen.routeName,
    );
  }

}