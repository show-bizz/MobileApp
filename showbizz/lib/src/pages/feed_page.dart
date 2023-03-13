import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.only(top: 30.0),
      height: screenSize.size.height,
      color: Color(0xFF2C2C2C),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Recommend shows for you",
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  _createPopularShows(context),
                  SizedBox(height: 20.0),
                  _createHottestArtists(context),
                  SizedBox(height: 20.0),
                  _createPopularPlaces(context),
                  SizedBox(height: 20.0),
                  _createDiscover(context),
                  Text(
                    "Latest new",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: 20.0),
                  _creaCards(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _creaCards(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _creaCards(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _creaCards(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createPopularShows(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Popular shows",
                style: TextStyle(
                    color: Colors.white, fontSize: 14.0,
                    fontFamily: 'Helvetica'
                ),
                textAlign: TextAlign.left),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0Nkb77VfY08qlxHAVlwFjW9eH40Oyfmu7cWFo4wDFncP9xob4",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: screenSize.size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _createHottestArtists(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Hottest artists",
                style: TextStyle(
                    color: Colors.white, fontSize: 14.0,
                    fontFamily: 'Helvetica'
                ),
                textAlign: TextAlign.left),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0Nkb77VfY08qlxHAVlwFjW9eH40Oyfmu7cWFo4wDFncP9xob4",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: screenSize.size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _createPopularPlaces(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Popular places",
                style: TextStyle(
                    color: Colors.white, fontSize: 14.0,
                    fontFamily: 'Helvetica'
                ),
                textAlign: TextAlign.left),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0Nkb77VfY08qlxHAVlwFjW9eH40Oyfmu7cWFo4wDFncP9xob4",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: screenSize.size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _createDiscover(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Discover",
                style: TextStyle(
                    color: Colors.white, fontSize: 14.0,
                    fontFamily: 'Helvetica'
                ),
                textAlign: TextAlign.left),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0Nkb77VfY08qlxHAVlwFjW9eH40Oyfmu7cWFo4wDFncP9xob4",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: screenSize.size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _creaCards() {
    return Card(color: Color(0xFF353535),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ListTile(
                leading: Image(image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9a71n0W47e4T5sNvRVBIsTfUpA3GKp7ZydVqYKA4W5N387Fni"),),
                title: Text("New York Times",
                    style: TextStyle(color: Color(0xFF898989), fontSize: 12.0,
                        fontStyle: FontStyle.italic)),
                subtitle: Text("Justin Bieber is cancelling all his concerts",
                    style: TextStyle(color: Colors.white, fontSize: 15.0)),
              ),
              Text("2 hours ago", style: TextStyle(color: Colors.blueAccent,
                  fontSize: 13.0),),
            ])
    );
  }

}
