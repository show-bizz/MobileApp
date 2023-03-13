import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:showbizzz/my_flutter_app_icons.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Container(
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
                  _createUser(context),
                  _createProfilePhoto(),
                  SizedBox(height: 5.0),
                  _createInstagram(),
                  SizedBox(height: 5.0),
                  _createFacebook(),
                  SizedBox(height: 5.0),
                  _creaSpotify(),
                  SizedBox(height: 25.0),
                  _concertsAssisted(),
                  SizedBox(height: 10.0),
                  _placesVisited(),
                  SizedBox(height: 25.0),
                  _promotionCode(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _createUser(BuildContext context){
    var screenSize = MediaQuery.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 8.0,),
        Text("RUBEN CORONA",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 15.0,
              color: Colors.white),
        ),
        SizedBox(width: screenSize.size.width*0.5,),
        IconButton(icon: Icon(Icons.settings,
            size: 30.0,
            color: Color(0xFFD0AA43)),
          onPressed: (){},
        ),
      ],
    );
  }

  Widget _createProfilePhoto(){
    return CircleAvatar(
      radius: 85.0,
      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRgRj4zEmoJQX3OmMre1rCgLtUe1uBpG5u0ORhOs26GBSoaZe99"),
      backgroundColor: Color(0xFFD0AA43),
    );
  }

  Widget _createInstagram(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(MyFlutterApp.instagram_seeklogo_com,
            color: Color(0xFFD0AA43),
            size: 30.0,),
          onPressed: (){},
        ),
        Text("@rubensburgers",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 15.0,
              color: Colors.white),
        ),
      ],
    );
  }

  Widget _createFacebook(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(MyFlutterApp.iconmonstr_facebook_6,
            color: Color(0xFFD0AA43),
            size: 30.0,),
          onPressed: (){},
        ),
        Text("Ruben Corona",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 15.0,
              color: Colors.white),
        ),
      ],
    );
  }

  Widget _creaSpotify(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(MyFlutterApp.spoti,
            color: Color(0xFFD0AA43),
            size: 30.0,),
          onPressed: (){},
        ),
        Text("urbennoroac",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 15.0,
              color: Colors.white),
        ),
      ],
    );
  }

  Widget _concertsAssisted(){
    return Column(
      children: <Widget>[
        Text("Concerts Assisted",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 20.0,
              color: Colors.white),
        ),
        Text("52",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 50.0,
              color: Color(0xFFD0AA43)),
        ),
      ],
    );
  }

  Widget _placesVisited(){
    return Column(
      children: <Widget>[
        Text("Places Visited",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 20.0,
              color: Colors.white),
        ),
        Text("60",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 50.0,
              color: Color(0xFFD0AA43)),
        ),
      ],
    );
  }

  Widget _promotionCode(BuildContext context){
    var screenSize = MediaQuery.of(context);

    final _height = screenSize.size.height;
    final _width = screenSize.size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("PROMOTION CODE",
          style: TextStyle(fontFamily: 'Avenir', fontSize: 20.0,
              color: Colors.white),
        ),
        SizedBox(height: 8.0),
        SizedBox(
          width: screenSize.size.width*0.60,
          child: TextField(
            maxLength: 10,
            autocorrect: false,
            autofocus: false,
            decoration: InputDecoration(
              counterText: "",
              hintText: 'Insert your promotion code',
              filled: true,
              fillColor: Color(0xFFCBCBCB),

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  )
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 13.0,
                  vertical: 10.0),
            ),
            cursorColor: Colors.black,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 14.0),
        SizedBox(
          width: _width * 0.4,
          height: (MediaQuery.of(context).size.height >= 896.0)
              ? MediaQuery.of(context).size.height * 0.05
              : MediaQuery.of(context).size.height * 0.06,
          child: RaisedButton(
              child: Text(
                'Apply',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              onPressed: () {},
              shape: StadiumBorder(),
              color: Color.fromARGB(255, 185, 136, 0)),
        ),
        SizedBox(height: 15.0),
      ],
    );
  }
}
