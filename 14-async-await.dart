void main() async {
  print('Antes de la peticion');

  final data = await httpGet('http://www.facebook.com');
  print(data);

  final nombre = await getNombre('10');
  print(nombre);

  print('Fin del programa');
}

Future<String> getNombre(String id) async {
  return '$id - George';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola mundo .. en 3 segundos';
  });
}
