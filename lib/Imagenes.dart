import 'package:flutter/material.dart';

class Imagenes extends StatefulWidget {
  const Imagenes({Key? key}) : super(key: key);

  @override
  State<Imagenes> createState() => _ImagenesState();
}

class _ImagenesState extends State<Imagenes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Bar"),
        ),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                  "https://holatelcel.com/wp-content/uploads/2021/03/destacadas.jpg"),
            ),
          ],
        ));
  }
}
