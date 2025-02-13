import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  _DadoosState createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
//Onde criamos asvariáveis
  int numeroDadoEsquerdo = 1;
  int numeroDadoDireito = 1;

  void alterarFacesDosDados (){
    setState(() {
      // Ação ao pressionar o botão
      numeroDadoEsquerdo = Random().nextInt(6) + 1;
      numeroDadoDireito = Random().nextInt(6) + 1;
      print('Número do dado = $numeroDadoEsquerdo');
    });
  }

  @override
  Widget build(BuildContext context) {
    //Onde modificamos as variáveis

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image.asset('imagens/dado$numeroDadoEsquerdo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                alterarFacesDosDados();
              },
              child: Image.asset('imagens/dado$numeroDadoDireito.png'),
            ),
          ),
        ],
      ),
    );
  }
}
