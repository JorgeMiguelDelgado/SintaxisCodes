void main() {
  final nombre = 'Jorge';
  saludar(nombre);

  saludar2(mensaje: 'hola');
  saludar3(nombre: nombre, mensaje: 'Hola');
}

void saludar(String name, [String mensaje = 'Hola']) {
  //print('$name $mensaje');
}

void saludar2({String? nombre, String mensaje = 'puede ser nulo'}) {
  print('$mensaje $nombre');
}

void saludar3({required String nombre, required String mensaje}) {
  print('$nombre $mensaje');
}
