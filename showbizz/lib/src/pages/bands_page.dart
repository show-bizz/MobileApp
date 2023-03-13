import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BandsPage extends StatefulWidget {
  @override
  _BandsPageState createState() => _BandsPageState();
}

class _BandsPageState extends State<BandsPage> {

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
                  Container(
                    child: Text("WANT TO SHOW YOUR TALENT AS AN ARTIST",
                      style: TextStyle(fontFamily: 'Helvetica', fontSize: 11.0,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 15.0),
                  _createButtonAsArtist(),
                  SizedBox(height: 35.0),
                  _createHotestArtist(context),
                  SizedBox(height: 25.0),
                  _createPopularArtist(context),
                  SizedBox(height: 25.0),
                  _createNewestArtist(context),
                  SizedBox(height: 35.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 18.0),
                      Text("Discover by geners",
                        style: TextStyle(fontFamily: 'Helvetica', fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  _creaGeners()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createHotestArtist(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Hottest artists",
              style: TextStyle(fontFamily: 'Helvetica', fontSize: 14.0,
                  color: Colors.white),
            ),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index){
            return Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSO1DYHRKBN0m-O-ENjdKpt1AD0ags6jzE8drkMC8uoYCoxmW0p",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _createPopularArtist(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 18.0),
              Text("Popular artists",
                style: TextStyle(fontFamily: 'Helvetica', fontSize: 14.0,
                    color: Colors.white),
              ),
            ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index){
            return Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT7VZpLbVu3i9ox9rAZyZQgoi8j32s6hIkMqPKCAH1q8xs5RHIj",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _createNewestArtist(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text("Newest artists",
              style: TextStyle(fontFamily: 'Helvetica', fontSize: 14.0,
                  color: Colors.white),
            ),
          ],
        ),
        Swiper(
          itemBuilder: (BuildContext context, int index){
            return Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTeVG4UHTE0TVqLVOmEsgS_9yS_4__r_luQ26L-hrSxavwZiq1q",
              fit: BoxFit.fill,);
          },
          itemCount: 10,
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: 200.0,
          layout: SwiperLayout.TINDER,
          pagination: SwiperPagination(),
        ),
      ],
    );
  }

  Widget _creaGeners(){
    List<FlatButton> listGenres = List<FlatButton>();
    List<String> geners = ["Alternative", "Banda", "Blues",
      "Classical", "Country", "Comedy", "Christian", "Dance/EDM",
      "Electronic", "Easy Listening", "Enka", "Frenchpop", "Gospel",
      "Hip-Hop", "Holiday", "Indie", "Industiral", "Indie Pop", "Instrumental",
      "Inspirational", "Jazz", "K-Pop", "Latin", "Metal", "New Age",
      "Opera", "Pop", "Rap", "Reggae", "R&B", "Rock", "Singer/Songwriter",
      "Soundtrack", "Texmex/Tejano", "World"];

    for(String value in geners){
      FlatButton object = FlatButton(
        onPressed: (){},
        child: Text("$value", style: TextStyle(fontFamily: 'Avenir',
            fontSize: 20.0, color: Colors.white)
        ),
      );
      listGenres.add(object);
    }

    return Column(
        children: listGenres);
    }

  Widget _createButtonAsArtist(){
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: (MediaQuery.of(context).size.height >= 896.0)
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.height * 0.06,
      child: RaisedButton(
          child: Text(
            'Register now',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          onPressed: () {},
          shape: StadiumBorder(),
          color: Color(0xFFDEBD51)),
    );
  }

}
