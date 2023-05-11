class ClassificacaoException implements Exception {
  String error() => "Classificação não identificada";

  @override
  String toString() {
    return "ClassificacaoException: ${error()}";
  }
}
