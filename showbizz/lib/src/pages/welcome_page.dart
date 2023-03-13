import 'package:flutter/material.dart';
import 'package:showbizzz/my_flutter_app_icons.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Container(
            padding: EdgeInsets.only(top: 60.0),
            color: Color(0xFF2C2C2C),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Center(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontFamily: 'Helvetica'),
                          ),
                          SizedBox(height: 13.0),
                          Text(
                            'Please log in or sing up to continue using our app.',
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontFamily: 'Helvetica'),
                          ),
                          SizedBox(height: 13.0),
                          Image(
                            image: AssetImage('assets/Showbizz5.png'),
                            height: 180.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 15.0),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Divider(
                                color: Colors.white,
                              )),
                          SizedBox(height: 20.0),
                          Text(
                            "Enter by social networks",
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontFamily: 'Helvetica'),
                          ),
                          SizedBox(height: 30.0),
                          _createSocialButtons(context),
                          SizedBox(height: 30.0),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Divider(color: Colors.white),
                          ),
                          SizedBox(height: 13.0),
                          Text(
                            "or login with number",
                            style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.white,
                                fontFamily: 'Helvetica'),
                          ),
                          SizedBox(height: 30.0),
                          _createLoginButton(context),
                          SizedBox(height: 13.0),
                          _createLabels()
                        ]),
                  ),
                ]))));
  }

  Widget _createSocialButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: (MediaQuery.of(context).size.height >= 896.0)
              ? MediaQuery.of(context).size.height * 0.05
              : MediaQuery.of(context).size.height * 0.06,
          child: RaisedButton(
            child: Icon(
              MyFlutterApp.instagram_seeklogo_com,
              color: Colors.white,
            ),
            onPressed: () {},
            shape: StadiumBorder(),
            color: Color.fromARGB(255, 60, 105, 255),
          ),
        ),
        SizedBox(width: 13.0),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: (MediaQuery.of(context).size.height >= 896.0)
              ? MediaQuery.of(context).size.height * 0.05
              : MediaQuery.of(context).size.height * 0.06,
          child: RaisedButton(
            child: Icon(
              MyFlutterApp.iconmonstr_facebook_6,
              color: Colors.white,
            ),
            onPressed: () {},
            shape: StadiumBorder(),
            color: Color.fromARGB(255, 58, 74, 161),
          ),
        )
      ],
    );
  }

  Widget _createLoginButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: (MediaQuery.of(context).size.height >= 896.0)
          ? MediaQuery.of(context).size.height * 0.05
          : MediaQuery.of(context).size.height * 0.07,
      child: RaisedButton(
        child: Text(
          "Sing Up",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              '/login', (Route<dynamic> route) => false);
        },
        shape: StadiumBorder(),
        color: Color(0xFFD0AA43),
      ),
    );
  }

  Widget _createLabels() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have account?",
          style: TextStyle(fontSize: 13.0, color: Colors.white),
        ),
        FlatButton(
          child: Text(
            "Create account here",
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xFF2065F7),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/register");
          },
        )
      ],
    );
  }
}
