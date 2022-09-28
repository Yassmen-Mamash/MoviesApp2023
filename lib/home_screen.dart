import 'package:flutter/material.dart';
import 'package:news_api/selections/browse_widget.dart';
import 'package:news_api/home_screen/home_widget.dart';
import 'package:news_api/selections/searsh_widget.dart';
import 'package:news_api/selections/watchlist_widget.dart';
import 'package:news_api/theme/themedata.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeWidget(),
    SearshWidget(),
    BrowseWidget(),
    WatchListWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CinemaDay'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: screens[currentIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:MyThemeData.orange ,
          unselectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/ic_home.png'),
                color:(currentIndex == 0)? MyThemeData.orange:Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/searsh@2x.png'),
                  color: (currentIndex == 1)? MyThemeData.orange:Colors.white,
                ),
                label: 'Searsh'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/ic_browse.png'),
                  color: (currentIndex == 2)? MyThemeData.orange:Colors.white,
                ),
                label: 'BROWSE'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/ic_watchlist.png'),
                  color: (currentIndex == 3)? MyThemeData.orange:Colors.white,
                ),
                label: 'WATHCLIST'),
          ]),
    );
  }
}
