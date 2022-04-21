import 'package:flutter/material.dart';
import 'package:the_app/FilasColumnasBotones.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }

  Widget cuerpo() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://wallpaperaccess.com/full/2314983.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Inicio de sesión",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Usuario",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Contraseña",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
              ),
              onPressed: iniciarSesion,
              child: const Text("Iniciar sesión"),
            ),
          ),
        ],
      )),
    );
  }

  void iniciarSesion() {
    print("Redirecciona a otra pantalla");
    // IF LOGIN OK
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const FilasColumnasBotones()));
  }
}
