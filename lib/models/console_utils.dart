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
}
