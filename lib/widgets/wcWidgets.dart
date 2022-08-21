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
      Column(
        children: [
          Image(image: AssetImage(asset)),
        ],
      ),
      spaciador(0, 30),
      Column(
        children: [
          Text(namePlato),
          Text(precio),
        ],
      ),
    ],
  );
}

Row filaPedido(
    String asset, String namePlato, String precio, VoidCallback funcion) {
  return Row(
    children: [
      GestureDetector(
        onTap: funcion,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
            ),
          ),
          child: Center(
              child: Image(
            image: AssetImage(asset),
          )),
        ),
      ),
      Spacer(),
      Column(
        children: [
          Text(
            namePlato,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Spacer(),
      Column(
        children: [
          Text(
            precio,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Spacer(),
    ],
  );
}

Row filaSedes(
    String titulo, String direccion, String asset, VoidCallback funcion) {
  return Row(
    children: [
      GestureDetector(
        onTap: funcion,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
            ),
          ),
          child: Center(
              child: Image(
            image: AssetImage(asset),
            width: 300,
            height: 300,
          )),
        ),
      ),
      Spacer(),
      Column(
        children: [titleText(titulo), subTitle(direccion)],
      ),
      Spacer(),
    ],
  );
}

AppBar barra(String titulo, BuildContext context) {
  return AppBar(
    toolbarHeight: 35,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Color(0xFFDC7633),
      ),
      onPressed: (() => Navigator.of(context).pop()),
    ),
    title: Text(
      titulo,
      style: TextStyle(color: Color(0xFFDC7633)),
    ),
    centerTitle: true,
    backgroundColor: Color(0xFFF4F6F7),
  );
}
