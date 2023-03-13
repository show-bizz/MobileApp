import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:showbizzz/src/pages/home_page.dart';
import 'package:showbizzz/src/pages/login_page.dart';
import 'package:showbizzz/src/pages/register_page.dart';
import 'package:showbizzz/src/pages/welcome_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Showbizz',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'EN'), // English
          const Locale('es', 'ES'), // Hebrew
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: WelcomePage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => HomePage(),
          '/register': (BuildContext context) => RegisterPage(),
          '/welcome': (BuildContext context) => WelcomePage(),
          '/login': (BuildContext context) => LoginPage(),
        } //Routes
    );
  }
}
