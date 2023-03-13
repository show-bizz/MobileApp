import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _colorTextfield = ThemeData(
    primaryColor: Color(0xFFD0AA43),
    hintColor: Colors.white,
    backgroundColor: Colors.white,
  );

  bool _passView = true;


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    final _height = screenSize.size.height;
    final _width = screenSize.size.width;

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        color: Color(0xFF2C2C2C),
        height: screenSize.size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    Image(
                      image: AssetImage('assets/Showbizz5.png'),
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Text('Showbizz',
                        style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                            fontFamily: 'Apollo')
                    ),
                    SizedBox(height: _height*0.04),
                    _creaNumero(),
                    SizedBox(height: _height*0.035),
                    _crearPass(),
                    SizedBox(height: _height*0.07),
                    _loginBoton(),
                    SizedBox(height: _height*0.02),
                    _facebookBoton(),
                    SizedBox(height: _height*0.04),
                    SizedBox(
                        width: _width*0.9,
                        child: Divider(
                          color: Color(0xFFD0AA43),
                        )),
                    //_creaCuenta(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _creaNumero(){
    var screenSize = MediaQuery.of(context);

    final _height = screenSize.size.height;
    final _width = screenSize.size.width;
    return SizedBox(
      width: _width*0.85,
      child: Theme(
        data: _colorTextfield,
        child: TextField(
          keyboardType: TextInputType.phone,
          obscureText: false,
          autocorrect: true,
          autofocus: false,
          maxLength: 10,
          decoration: InputDecoration(
            counterText: "",
            labelText: 'Número de telefono',
            contentPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 8.0),
            labelStyle: TextStyle(color: Color(0xFFDEBD51) //Color(0xFFD0AA43),
                ),
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _crearPass(){
    var screenSize = MediaQuery.of(context);

    final _height = screenSize.size.height;
    final _width = screenSize.size.width;
    return SizedBox(
      width: _width*0.85,
      child: Theme(
        data: _colorTextfield,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: _passView,
          autofocus: false,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon (Icons.remove_red_eye), color: Colors.white,
              onPressed: (){
                setState(() {
                  (_passView) ? _passView = false : _passView = true;
                });
              },
            ),
            fillColor: Colors.white,
            labelText: 'Contraseña',
            contentPadding: EdgeInsets.symmetric(horizontal: 0.0,vertical: 1.0),
            labelStyle: TextStyle(
              color: Color(0xFFDEBD51),
            ),
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _loginBoton(){

    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.7,
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
          child: Text('Inicia sesión',
            style: TextStyle(color: Colors.white, fontSize: 15.0),),
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil('/home',
                    (Route<dynamic> route) => false);
          },
          shape: StadiumBorder(),
          color: Color.fromARGB(255, 185, 136, 0)
      ),
    );
  }

  Widget _facebookBoton(){

    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.7,
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
          child: Text('Inicia sesión con facebook',
            style: TextStyle(color: Colors.white, fontSize: 15.0),),
          onPressed: () {},
          shape: StadiumBorder(),
          color: Color.fromARGB(255, 185, 136, 0)
      ),
    );
  }

//Widget _creaCuenta(){
//  return FlatButton(
//    child: Text('¿No tienes cuenta?\n Crea una aquí',
//      style: TextStyle(color: Colors.white, fontSize: 14.0),
//      textAlign: TextAlign.center,
//    ),
//    onPressed: (){
//      Navigator.of(context).pushNamed("/register");
//    },
//  );
//}

}