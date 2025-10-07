import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Multiplicacion extends StatefulWidget {
  const Multiplicacion({super.key});

  @override
  State<StatefulWidget> createState() {
    return body();
  }
}

void multiplicar() {}

class body extends State<Multiplicacion> {
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
                          labelText: 'Escribe el siguiente numero',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: multiplicar,
                        child: Text('Multiplicar'),
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
}
