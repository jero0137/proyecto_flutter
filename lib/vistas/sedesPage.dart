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
      appBar: barra("Sedes", context),
      backgroundColor: Color(0xFFDC7633),
      body: Center(
          child: Container(
        width: screenWidth,
        height: screenHeight * 0.9,
        decoration: BoxDecoration(
          color: Color(0xFFFBFCFC),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(children: [
          Spacer(),
          filaSedes("Sede Poblado", "Calle 48B # 83-20", "assets/logo.png", () {
            showDialog(
                context: context,
                builder: (BuildContext) {
                  return AlertDialog(
                    title: Text("Sede Poblado"),
                    content: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/logo.png"),
                          width: 250,
                          height: 200,
                        )
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Ok"),
                      ),
                    ],
                  );
                });
          }),
          Spacer(),
          filaSedes("Sede Laureles", "Calle 48B # 83-20", "assets/logo.png",
              () {
            showDialog(
                context: context,
                builder: (BuildContext) {
                  return AlertDialog(
                    title: Text("Sede laureles"),
                    content: Row(
                      children: [Image(image: AssetImage("assets/logo.png"))],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Ok"),
                      ),
                    ],
                  );
                });
          }),
          Spacer(),
          filaSedes("Sede Calazans", "Calle 48B # 83-20", "assets/logo.png",
              () {
            showDialog(
                context: context,
                builder: (BuildContext) {
                  return AlertDialog(
                    title: Text("Sede Calazans"),
                    content: Row(
                      children: [Image(image: AssetImage("assets/logo.png"))],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("Ok"),
                      ),
                    ],
                  );
                });
          }),
          Spacer(),
        ]),
      )),
    );
  }
}
