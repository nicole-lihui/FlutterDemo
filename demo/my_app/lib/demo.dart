import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Simple Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Material App"),
        ),
        body: Container(
          child: Center(
            child: Text("Hello World!"),
          ),
        ),
      )));
}
