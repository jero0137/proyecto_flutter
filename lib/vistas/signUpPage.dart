import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/vistas/welcomePage.dart';

import '../widgets/wcWidgets.dart';

class SignUpPage extends StatelessWidget {
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: barra("Inicio", context),
      backgroundColor: Color(0xFFDC7633),
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: Color(0xFFF4F6F7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(children: [
            Spacer(flex: 1),
            textField("Complete name"),
            Spacer(flex: 1),
            textField("Email"),
            Spacer(flex: 1),
            textFieldPass("Password"),
            Spacer(flex: 1),
            textFieldPass("Confirm password"),
            Spacer(flex: 2),
            textFieldPass("Address"),
            Spacer(flex: 2),
            textFieldPass("Phone number"),
            Spacer(flex: 2),
            largeButton(
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return welcomePage();
                    }),
                  );
              }, 
              Color(0xFF58D68D),
              "Sign up"),
            Spacer(flex: 2),
          ]),
        ),
      ),
    );
  }
}
