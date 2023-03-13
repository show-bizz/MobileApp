import 'package:flutter/material.dart';
import 'package:showbizzz/src/pages/video_player_screen.dart';

import '../../my_flutter_app_icons.dart';

class ManagerPage extends StatefulWidget {
  @override
  _ManagerPageState createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {
  int _totalRate = 5;
  bool _verifiedUser = true;
  Icon _verifiedIcon;
  Icon _verifiedProfile =
      Icon(Icons.check_circle, color: Colors.green, size: 25.0);
  Icon _notVerified = Icon(Icons.not_interested, color: Colors.red, size: 25.0);

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
                  _createArtist(),
                  //_createProfilePhoto(),
                  //SizedBox(height: 20.0),
                  //_createRate(),
                  _createPresentation(),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 15.0),
                      _createGender(),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  _createButtons(context),
                  //SizedBox(height: 20.0),
                  //_createLabels(),
                  SizedBox(height: 30.0),
                  _createPlayVideos(context),
                  SizedBox(height: 20.0),
                  _createInstagramPhotos(),
                  SizedBox(height: 10.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createArtist() {
    return Text('URBENNOROAC',
        style: TextStyle(
            fontSize: 18.0, color: Color(0xFFD0AA43), fontFamily: 'Avenir'));
  }

  Widget _createGender() {
    return Text('Ruben Corona' + '\n\n' + 'ROCK, INDIE ROCK, METAL',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            color: Color.fromARGB(255, 136, 136, 136),
            fontFamily: 'Helvetica'));
  }

  Widget _createProfilePhoto() {
    return Stack(
      children: <Widget>[
        //FadeInImage(
        //  placeholder: AssetImage('assets/loading.gif'),
        //  height: 90.0,
        //  image:
        CircleAvatar(
          radius: 40.0,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/"
              "images?q=tbn%3AANd9GcRgRj4zEmoJQX3OmMre1rCgLtUe1uB"
              "pG5u0ORhOs26GBSoaZe99"),
          backgroundColor: Color(0xFFD0AA43),
          //),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, top: 55.0),
          child:
          (_verifiedUser) ? _verifiedIcon = _verifiedProfile : _verifiedIcon =
              _notVerified,
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
      rateStar.add(Icon(Icons.star, color: colorStar, size: 20.0));
    }

    return Column(
      children: <Widget>[
        Row(
            children: rateStar,
            mainAxisAlignment: MainAxisAlignment.center
        ),
        SizedBox(height: 8.0),
        Text(
          "$_totalRate Star rate",
          style: TextStyle(
              fontFamily: 'Avenir', fontSize: 15.0, color: Colors.white),
        ),
      ],
    );
  }

  Widget _createPresentation() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 15.0),
        Column(
          children: <Widget>[
            _createProfilePhoto(),
            _createRate(),
          ],
        ),
        SizedBox(width: MediaQuery
            .of(context)
            .size
            .width / 15),
        _createLabels(),

      ],
    );
  }

  Widget _createButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.35,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.05,
          child: RaisedButton(
              child: Text(
                'Contract',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {},
              shape: StadiumBorder(),
              color: Color.fromARGB(255, 185, 136, 0)),
        ),
        SizedBox(width: 10.0),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.height * 0.05,
          child: RaisedButton(
              child: Text(
                'Follow',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {},
              shape: StadiumBorder(),
              color: Color.fromARGB(255, 185, 136, 0)),
        ),
      ],
    );
  }

  Widget _createLabels() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Show given",
                style: TextStyle(
                    fontFamily: 'Avenir',
                    color: Color(0xFFDBBA62),
                    fontSize: 15.0)),
            Text("50",
                style: TextStyle(
                    fontFamily: 'Avenir', color: Colors.white, fontSize: 20.0))
          ],
        ),
        SizedBox(width: 25.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Comments",
                style: TextStyle(
                    fontFamily: 'Avenir',
                    color: Color(0xFFDBBA62),
                    fontSize: 15.0)),
            Text("224",
                style: TextStyle(
                    fontFamily: 'Avenir', color: Colors.white, fontSize: 20.0)),
          ],
        ),
      ],
    );
  }

  Widget _createPlayVideos(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 18.0),
            Text(
              "Video Presentation",
              style: TextStyle(
                  fontFamily: 'Helvetica', fontSize: 14.0, color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        FittedBox(
            fit: BoxFit.cover,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 210.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  //border: Border.all(width: 10.0)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  clipBehavior: Clip.antiAlias,
                  child: YoutubePlayerVideos(),
                ))),
      ],
    );
  }

  Widget _createInstagramPhotos() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            SizedBox(width: 18.0),
            IconButton(
              icon: Icon(
                MyFlutterApp.instagram_seeklogo_com,
                color: Color(0xFFD0AA43),
                size: 30.0,
              ),
              onPressed: () {

              },
            ),
            Text(
              "@rubensburgers",
              style: TextStyle(
                  fontFamily: 'Avenir', fontSize: 15.0, color: Colors.white),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTDExS1ONlG9VgssrceRWCO0GYjf9yHMrJRT6d87GQE-0nGPlDS"),
                  width: 167.0,
                  height: 104.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10.0),
                Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9fE79keSnSueqq6-aG2D8zogxqrt2O6753tbQ4AuIbzYFE5ra"),
                  width: 167.0,
                  height: 104.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSym-DIaoD2w-eviN39FxZMhJXVH88LKyE7gdtaMr4ZgaSMUYpm"),
                  width: 167.0,
                  height: 104.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10.0),
                Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRvikmtGilOKym5Vh95YrbkigE4UCbyMMQusrH1G4KumDHguOxZ"),
                  width: 167.0,
                  height: 104.0,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}