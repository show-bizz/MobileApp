import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _colorTextfield = ThemeData(
      primaryColor: Color(0xFFD0AA43),
      hintColor: Color(0xFF626161),
      backgroundColor: Color(0xFF626161),
      cursorColor: Color(0xFFDEBD51));
  bool _passView = true;
  TextEditingController _inputDateController = TextEditingController();
  String _date = '';
  bool _checkedTerms = false;
  TextStyle _textStyleLastName;
  TextStyle _textStyleName;
  TextStyle _textStylePass;
  TextStyle _textStylePhone;
  TextStyle _textStyleMail;
  TextStyle _textStyleBirth;
  TextStyle _textStyleConfirmPass;
  bool _acceptedTerms = false;
  String _pass;
  final _formKey = GlobalKey<FormState>();
  bool _completeCodeVerification = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Form(
      key: _formKey,
      child: Scaffold(
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
                      Image(
                        image: AssetImage('assets/Showbizz5.png'),
                        height: 90.0,
                        fit: BoxFit.cover,
                      ),
                      Text('Showbizz',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Apollo')),
                      SizedBox(
                          width: screenSize.size.width * 0.85,
                          child: Divider(
                            color: Colors.white,
                          )),
                      Text(
                        "Registry",
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                      SizedBox(height: 10.0),
                      _createName(context),
                      SizedBox(height: 13.0),
                      _createLastName(context),
                      SizedBox(height: 13.0),
                      _createPass(context),
                      SizedBox(height: 13.0),
                      _createConfirmPass(context),
                      SizedBox(height: 13.0),
                      _createPhone(context),
                      SizedBox(height: 13.0),
                      _createEmail(context),
                      SizedBox(height: 13.0),
                      _createBirthday(context),
                      SizedBox(height: 13.0),
                      _createAllowTerms(),
                      SizedBox(height: 13.0),
                      _createSubmit(context),
                      SizedBox(height: 20.0),
                      //VerificationCode(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createName(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          validator: (String value) {
            return value.isEmpty ? "Enter a valid name" : null;
          },
          onChanged: (value) {
            setState(() {
              _textStyleName = TextStyle(color: Color(0xFFDEBD51));
            });
          },
          keyboardType: TextInputType.text,
          obscureText: false,
          autocorrect: true,
          autofocus: false,
          maxLength: 15,
          decoration: InputDecoration(
            counterText: "",
            labelText: 'Name',
            labelStyle: _textStyleName,
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _createLastName(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          onChanged: (value) {
            setState(() {
              _textStyleLastName = TextStyle(color: Color(0xFFDEBD51));
            });
          },
          validator: (String value) {
            return value.isEmpty ? "Enter a valid data" : null;
          },
          keyboardType: TextInputType.text,
          obscureText: false,
          autocorrect: true,
          autofocus: false,
          maxLength: 50,
          decoration: InputDecoration(
            counterText: "",
            labelText: 'Last name',
            labelStyle: _textStyleLastName,
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _createPass(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          validator: (value) {
            return value.isEmpty ? "Enter a valid data" : null;
          },
          maxLength: 25,
          autocorrect: false,
          obscureText: _passView,
          keyboardType: TextInputType.text,
          onChanged: (String value) {
            setState(() {
              _pass = value;
              _textStylePass = TextStyle(color: Color(0xFFDEBD51));
            });
          },
          decoration: InputDecoration(
            counterText: "",
            suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  (_passView) ? _passView = false : _passView = true;
                });
              },
            ),
            labelText: 'Password',
            labelStyle: _textStylePass,
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _createConfirmPass(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          maxLength: 25,
          validator: (String value) {
            return value != _pass ? "The password doesn't match" : null;
          },
          autocorrect: false,
          obscureText: _passView,
          keyboardType: TextInputType.text,
          onChanged: (value) {
            setState(() {
              _textStyleConfirmPass = TextStyle(color: Color(0xFFDEBD51));
            });
          },
          decoration: InputDecoration(
            counterText: "",
            suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  (_passView) ? _passView = false : _passView = true;
                });
              },
            ),
            labelText: 'Confirm your password',
            labelStyle: _textStyleConfirmPass,
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _createPhone(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          validator: (String value) {
            return value.isEmpty ? "Enter a valid data" : null;
          },
          onChanged: (value) {
            _textStyleConfirmPass = TextStyle(color: Color(0xFFDEBD51));
          },
          keyboardType: TextInputType.phone,
          obscureText: false,
          autocorrect: true,
          autofocus: false,
          maxLength: 10,
          decoration: InputDecoration(
            counterText: "",
            labelText: 'Phone number',
            labelStyle: _textStylePhone,
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _createEmail(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          validator: (String value) {
            return !value.contains("@") ? "Invalid mail" : null;
          },
          onChanged: (value) {
            _textStyleMail = TextStyle(color: Color(0xFFDEBD51));
          },
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          autocorrect: true,
          autofocus: false,
          maxLength: 80,
          decoration: InputDecoration(
            counterText: "",
            labelText: 'e-mail',
            labelStyle: _textStyleMail,
          ),
          cursorColor: Colors.white,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _createBirthday(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Theme(
        data: _colorTextfield,
        child: TextFormField(
          validator: (String value) {
            return value.isEmpty ? "Enter a valid data" : null;
          },
          onChanged: (value) {
            _textStyleBirth = TextStyle(color: Color(0xFFDEBD51));
          },
          enableInteractiveSelection: false,
          controller: _inputDateController,
          autofocus: false,
          decoration: InputDecoration(
            labelText: "Birthdate",
            labelStyle: _textStyleBirth,
          ),
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
            _selectDate(context);
          },
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Future _selectDate(BuildContext context) async {
    DateTime selector = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1920),
      lastDate: new DateTime.now(),
      locale: Locale("es", "ES"),
    );

    if (selector != null) {
      setState(() {
        _date = selector.toString();
        _inputDateController.text = _date.substring(0, 10);
      });
    }
  }

  Widget _createAllowTerms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          value: _checkedTerms,
          onChanged: (bool) {
            setState(() {
              (_checkedTerms) ? _checkedTerms = false : _checkedTerms = true;
              (_acceptedTerms) ? _acceptedTerms = false : _acceptedTerms = true;
            });
          },
          checkColor: Colors.black,
          activeColor: Color(0xFFDEBD51),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Accept terms and conditions',
            style: TextStyle(
                fontSize: 13.0, color: Colors.white, fontFamily: 'Helvetica'),
          ),
        ),
      ],
    );
  }

  Widget _createSubmit(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.06,
      child: RaisedButton(
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          onPressed: _acceptedTerms
              ? () {
                  if (_formKey.currentState.validate()) {
                    //Scaffold
                    //.of(context)
                    //.showSnackBar(SnackBar(content: Text("Processing")));
                    _createCodeVerification(context);
                  }
                }
              : null,
          shape: StadiumBorder(),
          color: Color.fromARGB(255, 185, 136, 0)),
    );
  }

  void _createCodeVerification(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Text("Verification code"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Verification code of 5 digits"),
                  Container(
                    child: Theme(
                      data: _colorTextfield,
                      child: VerificationCodeInput(
                        keyboardType: TextInputType.number,
                        length: 5,
                        onCompleted: (String value) {
                          setState(() {
                            _completeCodeVerification = true;
                          });
                        },
                        autofocus: true,
                        textStyle: TextStyle(
                          decorationColor: Color(0xFFD0AA43),
                          color: Colors.black,
                          fontSize: 20.0,
//
                        ),
                      ),
                    ),
                  )
                ],
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    return Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text("Next"),
                  onPressed: (_completeCodeVerification)
                      ? () {
                          return Navigator.of(context).pop();
                        }
                      : null,
                )
              ],
            );
          });
        });
  }

  Widget _createCodeField(BuildContext context) {
    return Container(
      child: Theme(
        data: _colorTextfield,
        child: VerificationCodeInput(
          keyboardType: TextInputType.number,
          length: 5,
          onCompleted: (String value) {
            setState(() {
              _completeCodeVerification = true;
            });
          },
          autofocus: true,
          textStyle: TextStyle(
            decorationColor: Color(0xFFD0AA43),
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
