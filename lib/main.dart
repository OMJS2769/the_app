import 'package:flutter/material.dart';
//import 'package:the_app/Imagenes.dart';
//import 'package:the_app/FilasColumnasBotones.dart';
import 'package:the_app/Login.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mi App",
      home: Login(),
    );
  }
}
