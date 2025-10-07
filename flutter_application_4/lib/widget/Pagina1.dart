import 'package:flutter/material.dart';
import 'package:flutter_application_4/widget/Suma.dart';
import 'package:flutter_application_4/widget/Division.dart';
import 'package:flutter_application_4/widget/Multiplicacion.dart';
import 'package:flutter_application_4/widget/Resta.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key});
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<Pagina1> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OPERACIONES',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 171, 227, 142),
      ),
      body: _index == 0
          ? Suma()
          : _index == 1
          ? Resta()
          : _index == 2
          ? Multiplicacion()
          : Division(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightGreen,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'SUMA'),
          BottomNavigationBarItem(icon: Icon(Icons.remove), label: 'RESTA'),
          BottomNavigationBarItem(
            icon: Icon(Icons.close),
            label: 'MULTIPLICACION',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.percent), label: 'DIVISION'),
        ],
        currentIndex: _index,
        selectedItemColor: const Color.fromARGB(255, 83, 17, 95),

        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
