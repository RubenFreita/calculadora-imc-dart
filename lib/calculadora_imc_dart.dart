import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:calculadora_imc_dart/utils/utils.dart';

execute() {
  String nome;
  double altura;
  double peso;

  print("Seja Bem vindo(a) a Calculadora de IMC!!");
  nome = Utils.recebeStringComTexto("Informe o seu Nome:");
  altura = Utils.recebeDoubleComTexto("Informe a sua Altura(em Metros):");
  peso = Utils.recebeDoubleComTexto("Informe o seu Peso(em Kg):");

  Pessoa pessoa = Pessoa(nome, altura, peso);
  Utils.calculaEVerificaImc(pessoa);
}
