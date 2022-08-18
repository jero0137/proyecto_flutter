import 'package:flutter/material.dart';

GestureDetector largeButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}

GestureDetector smallButton(VoidCallback function, Color bgColor, String text) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 55,
      height: 30,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(child: Text(text)),
    ),
  );
}

Text titleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
  );
}

Text subTitle(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 17,
    ),
    textAlign: TextAlign.center,
  );
}

SizedBox textFieldPass(String htext) {
  return SizedBox(
    width: 180,
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: htext,
      ),
    ),
  );
}

SizedBox textField(String htext) {
  return SizedBox(
    width: 180,
    child: TextField(
      decoration: InputDecoration(
        hintText: htext,
      ),
    ),
  );
}

SizedBox spaciador(double height, double width) {
  return SizedBox(
    width: width,
    height: height,
  );
}

Row filaComida(String asset, String namePlato, String precio) {
  return Row(
    children: [
      Image(image: AssetImage(asset)),
      Text(namePlato),
      Spacer(),
      Text(precio),
      Spacer(),
    ],
  );
}
