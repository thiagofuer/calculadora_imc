class PessoaNomeException implements Exception {
  String error() => "Nome inválido";

  @override
  String toString() {
    return "PessoaNomeException: ${error()}";
  }
}
