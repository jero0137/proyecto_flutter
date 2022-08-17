import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/wcWidgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F6F7),
      body: Center(
        child: Container(
          width: 280,
          height: 620,
          decoration: BoxDecoration(
            color: Color(0xFFDC7633),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Spacer(flex: 2),
            textField("User"),
            Spacer(flex: 1),
            textField("Name"),
            Spacer(flex: 1),
            textField("Email"),
            Spacer(flex: 1),
            textFieldPass("Password"),
            Spacer(flex: 1),
            textFieldPass("Confirm password"),
            Spacer(flex: 2),
            largeButton(() {}, Color(0xFF58D68D), "Sign up"),
            Spacer(flex: 2),
          ]),
        ),
      ),
    );
  }
}
