import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proyecto_flutter/widgets/wcWidgets.dart';

class SedesPage extends StatelessWidget {
  SedesPage({Key? key}) : super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Container(
        width: screenWidth * 0.8,
        height: screenHeight * 0.9,
        decoration: BoxDecoration(
          color: Color(0xFFCB4335),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          spaciador(30, 0),
          Row(
            children: [
              Image(image: AssetImage("assets/logo.png")),
              Column(
                children: [
                  titleText("Sede Poblado"),
                  subTitle("Calle 45B #84 122"),
                ],
              ),
            ],
          ),
          spaciador(30, 0),
          Row(
            children: [
              Image(image: AssetImage("assets/logo.png")),
              Column(
                children: [
                  titleText("Sede Laureles"),
                  subTitle("Calle 82A #30A 120"),
                ],
              ),
            ],
          ),
          spaciador(30, 0),
          Row(
            children: [
              Image(image: AssetImage("assets/logo.png")),
              Column(
                children: [
                  titleText("Sede Calasanz"),
                  subTitle("Calle 50A #84 122"),
                ],
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
        ]),
      )),
    );
  }
}
