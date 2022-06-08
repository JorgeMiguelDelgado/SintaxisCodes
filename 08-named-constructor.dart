void main() {
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Money',
  };
  //final wolverine = new Heroe(nombre:'Logan',poder: 'Regeneración');
  //print(wolverine);

  final ironman = Heroe.fromJson(rawJson);
  print(ironman);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre']!,
        this.poder = json['poder']!;

  @override
  String toString() {
    return 'nombre: ${this.nombre}\npoder: ${this.poder}';
  }
}
