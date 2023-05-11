import 'package:calculadora_imc/enum/classificacao_imc.dart';
import 'package:calculadora_imc/exceptions/classificacao_exception.dart';
import 'package:calculadora_imc/models/pessoa.dart';
import 'dart:math';

class Calculadora {
  ClassificacaoIMC classificarIMC(double resultadoIMC) {
    for (ClassificacaoIMC classificacao in ClassificacaoIMC.values) {
      if (resultadoIMC >= classificacao.valorMinimo &&
          resultadoIMC <= classificacao.valorMaximo) {
        return classificacao;
      }
    }
    throw ClassificacaoException();
  }

  double calcularIMC(Pessoa pessoa) {
    double alturaEmMetros = (pessoa.getAltura() / 100);
    double resultadoIMC =
        (pessoa.getPeso().toDouble() / pow(alturaEmMetros, 2));
    return resultadoIMC;
  }
}
