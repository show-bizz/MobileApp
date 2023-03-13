import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class VerificationCode extends StatefulWidget {
  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  var _colorTextfield = ThemeData(
    primaryColor: Color(0xFFD0AA43),
    hintColor: Colors.white,
    backgroundColor: Colors.white,
    cursorColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: _colorTextfield,
        child: VerificationCodeInput(
          keyboardType: TextInputType.number,
          length: 5,
          onCompleted: (String value) {
            print(value);
          },
          autofocus: true,
          textStyle: TextStyle(
            decorationColor: Color(0xFFD0AA43),
            color: Colors.black,
            fontSize: 20.0,
          ),
          //itemDecoration: BoxDecoration(color: Colors.white,
          //borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      //),
    );
  }
}
