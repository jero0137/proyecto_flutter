import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
            const Image(image: AssetImage("assets/personas.png")),
            Spacer(flex: 2),
            titleText("Sign In"),
            SizedBox(height: 8),
            subTitle("Ingresa"),
            Spacer(),
            SizedBox(
              width: 180,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "User",
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 180,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            Spacer(),
            largeButton(() {}, Color(0xFF58D68D), "Sign In"),
            Spacer(flex: 2),
          ]),
        ),
      ),
    );
  }
}
