Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  // stream = stream.takeWhile((int numero) => numero < 10);
  // checa o numero da saida da stream no takeWhile
  stream = stream.takeWhile((int numero) {
    print('O numero que chego no takeWhile: $numero');
    return numero <= 10;
  });

  // await for
  await for (var i in stream) {
    print('O numero que chegou no await for: $i');
  }

  print('fim');
}

int callback(int value) {
  print('O valor é: $value');
  return (value + 1) * 2;
}
