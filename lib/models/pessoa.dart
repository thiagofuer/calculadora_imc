class Pessoa {
  String _nome = "";
  int _peso = 0;
  int _altura = 0;

  Pessoa(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  setNome(String nome) {
    _nome = nome;
  }

  int getPeso() {
    return _peso;
  }

  setPeso(int peso) {
    _peso = peso;
  }

  int getAltura() {
    return _altura;
  }

  setAltura(int altura) {
    _altura = altura;
  }
}
