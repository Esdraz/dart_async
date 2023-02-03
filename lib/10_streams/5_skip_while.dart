Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5).skipWhile((numero) {
    print('Numero que chegou na skipWhile $numero');
    return numero < 5;
  });

  // await for
  await for (var i in stream) {
    print('O numero que chegou no await for: $i');
  }

  print('fim');
}

int callback(int value) {
  print('Callback valor que chegou é: $value');
  return (value + 1) * 2;
}
