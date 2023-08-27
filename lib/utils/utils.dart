import 'dart:io';

import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:calculadora_imc_dart/utils/imc.dart';

class Utils {
  static String recebeStringComTexto(String texto) {
    String nome;

    do {
      print(texto);
      nome = stdin.readLineSync() ?? "";
    } while (nome == "");

    return nome;
  }

  static double recebeDoubleComTexto(String texto) {
    double valor;
    do {
      try {
        print(texto);
        valor = double.parse(stdin.readLineSync()!);
      } on FormatException {
        valor = -1;
        print("Entranda inválida, informe uma nova entrada.");
      } catch (e) {
        throw ("Entrada Inválida");
      }
    } while (valor.isNaN || valor.isNegative);
    return valor;
  }

  static void calculaEVerificaImc(Pessoa pessoa) {
    double imc = Imc.calculaImc(pessoa);
    print("O(a) ${pessoa.nome} está com IMC: ${imc.toStringAsFixed(2)}");
    Imc.verificaImc(pessoa);
  }
}
