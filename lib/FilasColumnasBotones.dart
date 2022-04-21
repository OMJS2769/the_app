import 'package:flutter/material.dart';

class FilasColumnasBotones extends StatefulWidget {
  const FilasColumnasBotones({Key? key}) : super(key: key);

  @override
  State<FilasColumnasBotones> createState() => _FilasColumnasBotonesState();
}

class _FilasColumnasBotonesState extends State<FilasColumnasBotones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filas Columnas y Botones"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "texto uno",
              textAlign: TextAlign.center,
            ),
          ),
          const Text(
            "texto dos",
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: const Text("Mi botonazo"),
            onPressed: () {
              var t = DateTime.now();
              print(t);
            },
          ),
          boton(funcion, "Nuevo boton separado con funcion por parámetro"),
          ElevatedButton(
            child: const Text("REGRESAR"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget boton(Function funcion, String texto) {
    return ElevatedButton(onPressed: () => funcion(), child: Text(texto));
  }

  void funcion() {
    print("Función via parametro");
  }
}
