import 'package:calculadora_imc_dart/models/pessoa.dart';

class Imc {
  static double calculaImc(Pessoa pessoa) {
    double imc = 0.0;
    try {
      imc = pessoa.peso / (pessoa.altura * pessoa.altura);
    } catch (e) {
      throw (e.toString());
    }
    return imc.isNaN || imc.isInfinite || imc.isNegative ? 0.0 : imc;
  }

  static verificaImc(Pessoa pessoa) {
    double imc = calculaImc(pessoa);
    String message = "";
    if (imc < 16) {
      message = "Magreza grave";
    } else if (imc >= 16 && imc < 17) {
      message = "Magreza moderada";
    } else if (imc >= 17 && imc < 18.5) {
      message = "Magreza leve";
    } else if (imc >= 18.5 && imc < 25) {
      message = "Saudável";
    } else if (imc >= 25 && imc < 30) {
      message = "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      message = "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      message = "Obesidade Grau II";
    } else if (imc >= 40) {
      message = "Obesidade Grau III";
    }
    print("Que é classificado como: $message");
  }
}
