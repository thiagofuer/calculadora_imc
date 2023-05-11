import 'package:calculadora_imc/controllers/calculadora.dart';
import 'package:calculadora_imc/enum/classificacao_imc.dart';
import 'package:calculadora_imc/models/console_utils.dart';
import 'package:calculadora_imc/models/pessoa.dart';

execute() {
  print("CALCULADORA DE IMC");
  String nome = ConsoleUtils.lerStringComTexto("Informe seu nome:");
  if (nome.trim() == "") {
    nome = "Visitante";
  }
  Pessoa pessoa = Pessoa(nome);
  int peso = ConsoleUtils.readIntValue("Informe o seu peso:");
  pessoa.setPeso(peso);
  int altura = ConsoleUtils.readIntValue("Informe sua altura em centimetros:");
  pessoa.setAltura(altura);
  Calculadora calculadora = Calculadora();
  double resultadoIMC = calculadora.calcularIMC(pessoa);
  ClassificacaoIMC classificacaoIMC = calculadora.classificarIMC(resultadoIMC);
  print(
      "${pessoa.getNome()} seu IMC é de ${resultadoIMC.toStringAsFixed(2)} e sua classificação: ${classificacaoIMC.descricao}");
}
