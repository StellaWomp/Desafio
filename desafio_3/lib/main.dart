import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                'Calculadora',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 500.0,
                        height: 120.0,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text(
                          'visor',
                          style: TextStyle(
                            fontSize: 70.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      //Container com todos as outras 5 linhas
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            //O container maior da primeira linha
                            Container(
                              width: 395.0,
                              height: 90.0,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Os quadrados de cada linha
                                  //Primeiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'C',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Segundo
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'DEL',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Terceiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '%',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Quarto
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '/',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      //Segunda linha
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            //O container maior da segunda linha
                            Container(
                              width: 395.0,
                              height: 90.0,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Os quadrados de cada linha
                                  //Primeiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '7',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Segundo
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '8',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Terceiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '9',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Quarto
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.blue[400],
                                    alignment: Alignment.center,
                                    child: Text(
                                      '*',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      //O container maior da Terceira linha
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            //O container maior da primeira linha
                            Container(
                              width: 395.0,
                              height: 90.0,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Os quadrados de cada linha
                                  //Primeiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '4',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Segundo
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '5',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Terceiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '6',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Quarto
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      //Quarta linha
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            //O container maior da quarta linha
                            Container(
                              width: 395.0,
                              height: 90.0,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Os quadrados de cada linha
                                  //Primeiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Segundo
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Terceiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Quarto
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      //O container maior da Quinta linha
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            //O container maior da primeira linha
                            Container(
                              width: 395.0,
                              height: 90.0,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Os quadrados de cada linha
                                  //Primeiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '.',
                                      style: TextStyle(
                                          fontSize: 60,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Segundo
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Terceiro
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '√',
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  //Quarto
                                  Container(
                                    height: 90.0,
                                    width: 90.0,
                                    //color: Colors.black,
                                    alignment: Alignment.center,
                                    child: Text(
                                      '=',
                                      style: TextStyle(
                                          fontSize: 50,
                                          color: Colors.blue[900],
                                          fontWeight: FontWeight.bold,),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
