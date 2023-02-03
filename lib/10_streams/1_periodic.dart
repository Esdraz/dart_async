Future<void> main() async {
  print('inicio');
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

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
