import 'package:flutter/material.dart';

void main() {
  runApp (
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.purple[200],
          appBar: AppBar(
            backgroundColor: Colors.purple[100],
            title: Text('Sou programadora'),
          ),
          body: Center(
            child: Image(image: AssetImage('imagens/programador.png')),
          ),
        ),
      ),
  );


}
