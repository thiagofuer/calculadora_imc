enum ClassificacaoIMC {
  magrezaGrave(valorMinimo: 0, valorMaximo: 15.9, descricao: "Magreza grave"),
  magrezaModerada(
      valorMinimo: 16, valorMaximo: 16.9, descricao: "Magreza moderada"),
  magrezaLeve(valorMinimo: 17, valorMaximo: 18.4, descricao: "Magreza leve"),
  saudavel(valorMinimo: 18.5, valorMaximo: 24.9, descricao: "Saudável"),
  sobrepeso(valorMinimo: 25.0, valorMaximo: 29.9, descricao: "Sobrepeso"),
  obesidadeGrau1(
      valorMinimo: 30, valorMaximo: 34.9, descricao: "Obesidade Grau 1"),
  obesidadeGrau2(
      valorMinimo: 35,
      valorMaximo: 39.9,
      descricao: "Obesidade Grau 2 (severa)"),
  obesidadeGrau3(
      valorMinimo: 40,
      valorMaximo: 1000,
      descricao: "Obesidade Grau 3 (mórbida)");

  const ClassificacaoIMC(
      {required this.valorMinimo,
      required this.valorMaximo,
      required this.descricao});

  final double valorMinimo;
  final double valorMaximo;
  final String descricao;
}
