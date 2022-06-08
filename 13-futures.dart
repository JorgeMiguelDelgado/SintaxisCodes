void main() {
  print('Antes de la peticion');

  httpGet('http://www.facebook.com').then((data) {
    print(data);
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola mundo .. en 3 segundos';
  });
}
