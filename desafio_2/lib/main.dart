import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Primeira linha
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.white,
                      //child: Text('Container 1'),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.white,
                      //child: Text('Container 2'),
                    ),
                  ],
                ),
                //Segunda linha (Centro)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150.0,
                      width: 200.0,
                      color: Colors.black,
                      alignment: Alignment.center, // Alinha o texto no centro do container
                      child: Text(
                        'Desafio aula 15',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center, ), // Centraliza o texto dentro do container
                    ),
                  ],
                ),
                //Terceira linha
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.white,
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.white,
                      //child: Text('Container 2'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
