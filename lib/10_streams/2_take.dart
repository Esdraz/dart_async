Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5); //executa x vezes e corta a stream

  // await for
  await for (var i in stream) {
    print(i);
  }

  print('fim');
}

int callback(int value) {
  print('O valor é: $value');
  return (value + 1) * 2;
}
