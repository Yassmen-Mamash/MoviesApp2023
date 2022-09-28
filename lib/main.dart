import 'package:flutter/material.dart';
import 'package:news_api/home_screen.dart';
import 'package:news_api/theme/themedata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {HomeScreen.routeName:(_)=>HomeScreen()},
      initialRoute: HomeScreen.routeName,
      theme:MyThemeData.darkTheme,
    );
  }

}