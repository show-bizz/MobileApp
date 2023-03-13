import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlacesPage extends StatefulWidget {
  @override
  _PlacesPageState createState() => _PlacesPageState();
}

class _PlacesPageState extends State<PlacesPage> {
  TextStyle _helveticaTitles = TextStyle(
      color: Colors.white, fontSize: 14.0,
      fontFamily: 'Helvetica'
  );
  int _totalRate = 3;
  List<String> _imagesHottestPlaces = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT2FI9NlvtL7tGh7YgISuUyGEsSV8gt-xotPibnt6VXABW6mXhv",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSd43l35o19ySIzYoXn_ulk13NaKTM_o3x5lpXCA26kGNhuR2kV",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDW6OmIp8FAJmRoEInMomy7asyMOHwARqW1txPDtFEV0kjRHbU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTgLQGL7qFbi0XZxXFn159SDIxQvgMpEeC1BfRjKpMpx5T56FD",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDExS1ONlG9VgssrceRWCO0GYjf9yHMrJRT6d87GQE-0nGPlDS",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcScAg-XJiaCljQiIi8schwdvFZ4B_MRCCWNEiS1a68OGtDp44Y6",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRNX17qjEoXBRt6cQhA2Hx2aOyAoNLAkSUdUq9z0HmVsJNaKoYR",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRAjKxUOOE-AM4LXP21mhlinVfIB1DsnyEm9c5Wgcx10z1CnMkJ",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSRz96uUZNf0Jrjme-fac_DgpTlkLeYcsw53lzLBwl5v3oxutVs",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQix18DpWgkYHVuIhWmTMj0Uz2PXVa-CTTZIDj-6aWrcaWYImHB"
  ];
  Completer<GoogleMapController> _controller = Completer();

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
                  Text("Want to create an event or promote your stage?",
                      style: _helveticaTitles
                  ),
                  SizedBox(height: 13.0),
                  _createOwnerPlace(context),
                  SizedBox(height: 25.0),
                  _createMaps(context),
                  SizedBox(height: 25.0),
                  _createRateLastEvent(),
                  SizedBox(height: 25.0),
                  _createHottestPlaces(context),
                  SizedBox(height: 25.0),
                  _createPopularPlaces(context),
                  SizedBox(height: 25.0),
                  _createNewestPlaces(context),
                  SizedBox(height: 25.0),
                  Text("Discover by category", style: _helveticaTitles),
                  _createCategories(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onMapCreated(GoogleMapController controller) {
    setState(() {
      _controller.complete(controller);
    });
  }

  Widget _createOwnerPlace(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.4,
      height: (MediaQuery
          .of(context)
          .size
          .height >= 896.0) ?
      MediaQuery
          .of(context)
          .size
          .height * 0.05 :
      MediaQuery
          .of(context)
          .size
          .height * 0.06,
      child: RaisedButton(
          child: Text('Create profile',
            style: TextStyle(color: Colors.white, fontSize: 15.0),),
          onPressed: () {
            print(MediaQuery
                .of(context)
                .size
                .height);
          },
          shape: StadiumBorder(),
          color: Color(0xFFDEBD51)
      ),
    );
  }

  Widget _createMaps(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.95,
      height: 200.0,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          clipBehavior: Clip.antiAlias,
          child: _createMapa()
      ),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 234, 225),
          borderRadius: BorderRadius.circular(50.0)
      ),
    );
  }

  Widget _createMapa() {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(
          target: LatLng(19.432608, -99.133209),
          zoom: 11.0),
      myLocationEnabled: true,
    );
  }

  Widget _createRateLastEvent() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Rate your last event", style: _helveticaTitles),
          ],
        ),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment.topCenter,
          width: MediaQuery
              .of(context)
              .size
              .width * 0.95,
          height: 258.0,
          decoration: BoxDecoration(
              color: Color.fromARGB(80, 222, 189, 81)
          ),
          child: Column(
            children: <Widget>[
              _createRate()
            ],
          ),
        ),
      ],
    );
  }

  Widget _createRate() {
    var colorStar;
    List<Icon> rateStar = List<Icon>();
    for (int i = 1; i <= 5; i++) {
      (i <= _totalRate)
          ? colorStar = Color(0xFFDBBA62)
          : colorStar = Color(0xFF707070);
      rateStar.add(Icon(Icons.star, color: colorStar, size: 40.0));
    }

    return Column(
      children: <Widget>[
        Row(children: rateStar, mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 8.0),
        Text(
          "$_totalRate Star rate",
          style: TextStyle(
              fontFamily: 'Avenir', fontSize: 21.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget _createHottestPlaces(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Hosttest places",
                style: TextStyle(
                    color: Colors.white, fontSize: 14.0,
                    fontFamily: 'Helvetica'
                ),
                textAlign: TextAlign.left),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(_imagesHottestPlaces[index],
              fit: BoxFit.fill,
            );
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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQcXAdllwOZ47G0e2AAIS0dJB4k1g9xIMhgviwzLzUxhq8ICky",
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

  Widget _createNewestPlaces(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Newest places",
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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQNotfA22q4LCLgQaeZBUCRfHHJq_X48Ed2IHWyDvc7IFaMM6_i",
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

  Widget _createCategories() {
    List<FlatButton> listGenres = List<FlatButton>();
    List<String> categories = ["Bar", "Restaurant", "Club", "Theatre",
      "Auditory", "Stadium", "Park", "Forum", "Restaurant-Bar"];

    for (String value in categories) {
      FlatButton object = FlatButton(
        onPressed: () {},
        child: Text("$value", style: TextStyle(fontFamily: 'Avenir',
            fontSize: 20.0, color: Colors.white)
        ),
      );
      listGenres.add(object);
    }

    return Column(
        children: listGenres);
  }
}
