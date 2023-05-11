import 'package:calculadora_imc/models/pessoa.dart';
import 'package:calculadora_imc/controllers/calculadora.dart';
import 'package:calculadora_imc/enum/classificacao_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculo IMC de pessoa com sobrepeso', () {
    Pessoa pessoa = Pessoa("Tester");
    pessoa.setPeso(90);
    pessoa.setAltura(177);
    Calculadora calculadora = Calculadora();
    double resultadoIMC = calculadora.calcularIMC(pessoa);
    ClassificacaoIMC classificacaoIMC =
        calculadora.classificarIMC(resultadoIMC);
    expect(classificacaoIMC, ClassificacaoIMC.sobrepeso);
  });
}
