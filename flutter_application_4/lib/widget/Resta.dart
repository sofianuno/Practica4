import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Resta extends StatefulWidget {
  const Resta({super.key});

  @override
  State<StatefulWidget> createState() {
    return body();
  }
}

class body extends State<Resta> {
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(15),
          child: Card(
            elevation: 18,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: TextField(
                        controller: n1,
                        keyboardType: TextInputType.number, // Teclado numérico
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: InputDecoration(
                          labelText: 'Escribe un numero',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: TextField(
                        controller: n2,
                        keyboardType: TextInputType.number, // Teclado numérico
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        decoration: InputDecoration(
                          labelText: 'Escribe el segundo numero',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: restar,
                        child: Text('restar'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void restar() {
    // Convierte los textos a enteros
    final num1 = int.tryParse(n1.text) ?? 0;
    final num2 = int.tryParse(n2.text) ?? 0;
    // Realiza la resta
    final resultado = num1 - num2;
    // Muestra el resultado en un AlertDialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Resultado de la Resta"),
          content: Text("El resultado de $num1 - $num2 es: $resultado"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Cierra el diálogo
              child: const Text("Cerrar"),
            ),
          ],
        );
      },
    );
  }
}
