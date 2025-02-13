import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart'; // Usando apenas o pacote expressions
import 'dart:math';
void main() {
  runApp(MeuApp());
}

class MeuApp extends StatefulWidget {
  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  // Variáveis: visor e a expressão
  String visor = '0';
  String expressao = '';

  // Função: atualizar o visor e a expressão
  void alterarFacesDosDados(String texto) {
    setState(() {
      if (texto == 'C') {
        // Limpar tudo
        visor = '0';
        expressao = '';
      } else if (texto == 'DEL') {
        // Deletar o último caractere
        if (visor.length > 1) {
          visor = visor.substring(0, visor.length - 1);
          expressao = expressao.substring(0, expressao.length - 1);
        } else {
          visor = '0';
          expressao = '';
        }
      } else if (texto == '=') {
        // Calcular o resultado
        try {
          visor = calcularResultado(expressao);
          expressao = visor;
        } catch (e) {
          visor = 'Erro';
        }
      } else if (texto == '%') {
        // Tratando o porcentagem (%)
        if (expressao.isNotEmpty) {
          if (expressao.contains('%')) {
            // Se a expressão já tiver %, calculamos corretamente
            var partes = expressao.split('%');
            if (partes.length == 2) {
              // A parte antes do % é o número (como 4), e a parte depois do % é o valor (como 100)
              var valorAntesDoPercentual = double.tryParse(partes[0].trim()) ?? 0;
              var valorDepoisDoPercentual = double.tryParse(partes[1].trim()) ?? 0;
              expressao = '${valorDepoisDoPercentual * (valorAntesDoPercentual / 100)}';
            }
          } else {
            // Caso contrário, adiciona o símbolo de % e a operação de cálculo
            expressao += '%';
          }
        }
        visor = expressao;
      } else {
        // Add número ou operação ao visor
        if (visor == '0') {
          visor = texto;
        } else {
          visor += texto;
        }
        expressao = visor;
      }
    });
  }


  // Função: calcular o resultado da expressão
  String calcularResultado(String expressao) {
    try {
      // Substituindo 'x' por '*' e '÷' por '/' para garantir que as operações sejam interpretadas corretamente
      expressao = expressao.replaceAll('x', '*').replaceAll('÷', '/');

      // Usando - expressions - para calcular o resultado
      final expression = Expression.parse(expressao);
      final evaluator = ExpressionEvaluator();
      final result = evaluator.eval(expression, {});

      // Retorna o resultado como string
      if (result is double || result is int) {
        return result.toString();
      } else {
        return 'Erro';
      }
    } catch (e) {
      return 'Erro';
    }
  }

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
                  width: double.infinity,
                  height: 120.0,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    visor,
                    style: TextStyle(
                      fontSize: 70.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 6.0),
                // Aqui começa o código para as linhas de botões
                _linhaDeBotoes(['C', 'DEL', '%', '/']),
                _linhaDeBotoes(['7', '8', '9', 'x']),
                _linhaDeBotoes(['4', '5', '6', '-']),
                _linhaDeBotoes(['1', '2', '3', '+']),
                _linhaDeBotoes(['.', '0', ' ', '=']),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Função: criar cada linha de botões
  Widget _linhaDeBotoes(List<String> botoes) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: botoes.map((texto) {
          return GestureDetector(
            onTap: () => alterarFacesDosDados(texto),
            child: Container(
              height: 90.0,
              width: 90.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                texto,
                style: TextStyle(
                  fontSize: 40.0,
                  color: texto == 'C' || texto == 'DEL' || texto == '%'
                      || texto == '/' || texto == 'x' || texto == '-' || texto == '+' || texto == '='
                      ? Colors.blue[900]
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
