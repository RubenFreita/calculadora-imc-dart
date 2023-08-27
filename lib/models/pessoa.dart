class Pessoa {
  final String _nome;
  final double _peso;
  final double _altura;

  const Pessoa(this._nome, this._altura, this._peso);

  String get nome => _nome;
  double get peso => _peso;
  double get altura => _altura;
}
