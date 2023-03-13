import 'package:flutter/material.dart';
import 'package:showbizzz/my_flutter_app_icons.dart';
import 'package:showbizzz/src/pages/bands_page.dart';
import 'package:showbizzz/src/pages/feed_page.dart';
import 'package:showbizzz/src/pages/manager_page.dart';
import 'package:showbizzz/src/pages/places_page.dart';
import 'package:showbizzz/src/pages/user_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  var _currentPage = ["Feed", "Places", "Bands", "Manager", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF575454),
        actions: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _createCamera(),
              _createFinder(),
              _createMusic(),
            ],
          ),
        ],
      ),
      body: callPage(_selectIndex),
      bottomNavigationBar: _navigationBar(),
    );
  }


  Widget _createFinder() {
    var screenSize = MediaQuery.of(context);
    return SizedBox(
      width: screenSize.size.width * 0.70,
      child: Theme(
        data: ThemeData(
          primaryColor: Color(0xFFD0AA43),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find artists, genres, places and more...',
            filled: true,
            fillColor: Color(0xFFCBCBCB),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(
                  style: BorderStyle.none,
                )
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 13.0,
                vertical: 8.0),
          ),
          cursorColor: Colors.black,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _createCamera() {
    return IconButton(
      icon: Icon(Icons.camera_alt, color: Color(0xFFD0AA43), size: 25.0,),
      onPressed: () {},
    );
  }

  Widget _createMusic() {
    return IconButton(
      icon: Icon(Icons.music_note, color: Color(0xFFD0AA43), size: 25.0,),
      onPressed: () {

      },
    );
  }

  Widget _navigationBar(){
    return BottomNavigationBar(
      backgroundColor: Color(0xFF575454),
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectIndex,
      onTap: (value){
        _selectIndex = value;
        setState(() {

        });
      },
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.feed,
                color: Color(0xFFD0AA43)),
            activeIcon: Icon(MyFlutterApp.feed, color: Colors.white,),
            title: Text('Home')
        ),
        BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.places,
                color: Color(0xFFD0AA43)),
            activeIcon: Icon(MyFlutterApp.places, color: Colors.white,),
            title: Text('Places')
        ),
        BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.artist,
                color: Color(0xFFD0AA43)),
            activeIcon: Icon(MyFlutterApp.artist, color: Colors.white,),
            title: Text('Bands')
        ),
        BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.manager,
                color: Color(0xFFD0AA43)),
            activeIcon: Icon(MyFlutterApp.manager, color: Colors.white,),
            title: Text('Manager')
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: Color(0xFFD0AA43)),
            activeIcon: Icon(Icons.person, color: Colors.white,),
            title: Text('Profile')
        ),
      ],
    );
  }

  Widget callPage(int currentIndex){
    switch (currentIndex) {
      case 0:
        return FeedPage();
      case 1:
        return PlacesPage();
      case 2:
        return BandsPage();
      case 3:
        return ManagerPage();
      case 4:
        return UserPage();
        break;
      default:
        return FeedPage();
    }
  }

  Widget getCurrentPage() {
    String page;
    page = _currentPage[_selectIndex];
    return Text("$page",
      style: TextStyle(
          color: Colors.white, fontSize: 14.0,
          fontFamily: 'Helvetica'
      ),
    );
  }
}
