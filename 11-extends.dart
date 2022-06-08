void main() {
  final superman = new Heroe('JORGE');
  final villano = new Villano('Venom');

  print(superman);
  print(villano);
}

abstract class Personaje {
  String? poder;
  String nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  Heroe(String nombre) : super(nombre);
}

class Villano extends Personaje {
  int maldad = 99;

  Villano(String nombre) : super(nombre);
}
