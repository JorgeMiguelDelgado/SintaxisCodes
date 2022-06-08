import 'dart:math';

void main() {
  final cuadrado = new Cuadrado(5);

  cuadrado.area = 100;

  print('area ${cuadrado.calculaArea()}');

  print('lado: ${cuadrado.lado}');

  print('lado get : ${cuadrado.area}');
}

class Cuadrado {
  double lado;

  double get area {
    return this.lado * this.lado;
  }

  set area(double valor) {
    this.lado = sqrt(valor);
  }

  Cuadrado(double lado) : this.lado = lado;

  double calculaArea() {
    return this.lado * this.lado;
  }
}
