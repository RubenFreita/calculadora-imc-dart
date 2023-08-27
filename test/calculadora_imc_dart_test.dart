//import 'package:calculadora_imc_dart/calculadora_imc_dart.dart';
import 'package:calculadora_imc_dart/models/pessoa.dart';
import 'package:calculadora_imc_dart/utils/imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculate imc menor que 16', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 40);
    expect(Imc.calculaImc(pessoa), lessThan(16));
  });
  test('calculate imc maior ou igual a 16 e menor que 17 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 50);
    expect(Imc.calculaImc(pessoa), greaterThanOrEqualTo(16));
    expect(Imc.calculaImc(pessoa), lessThan(17));
  });

  test('calculate imc maior ou igual a 17 e menor que 18.5 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 55);
    expect(Imc.calculaImc(pessoa), greaterThanOrEqualTo(17));
    expect(Imc.calculaImc(pessoa), lessThan(18.5));
  });
  test('calculate imc maior ou igual a 18.5 e menor que 25 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 65);
    expect(Imc.calculaImc(pessoa), greaterThanOrEqualTo(18.5));
    expect(Imc.calculaImc(pessoa), lessThan(25));
  });

  test('calculate imc maior ou igual a 25 e menor que 30 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 77);
    expect(Imc.calculaImc(pessoa), greaterThanOrEqualTo(25));
    expect(Imc.calculaImc(pessoa), lessThan(30));
  });
  test('calculate imc maior ou igual a 30 e menor que 35 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 95);
    expect(Imc.calculaImc(pessoa), greaterThanOrEqualTo(30));
    expect(Imc.calculaImc(pessoa), lessThan(35));
  });
  test('calculate imc maior ou igual a 35 e menor que 40 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 110);
    expect(Imc.calculaImc(pessoa), greaterThanOrEqualTo(35));
    expect(Imc.calculaImc(pessoa), lessThan(40));
  });
  test('calculate imc maior 40 ', () {
    Pessoa pessoa = Pessoa("Artur", 1.75, 130);
    expect(Imc.calculaImc(pessoa), greaterThan(40));
  });
  test('calculate FormatException', () {
    Pessoa pessoa = Pessoa("Artur", -1, -1);
    expect(Imc.calculaImc(pessoa), equals(0));
  });
}
