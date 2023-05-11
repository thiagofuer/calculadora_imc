import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return readString();
  }

  static String readString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static readIntValue(String inputMessage) {
    print(inputMessage);
    var value = readString();
    try {
      return int.parse(value);
    } catch (e) {
      return 0;
    }
  }

  static double? lerDouble() {
    var value = readString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);
        if (value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
