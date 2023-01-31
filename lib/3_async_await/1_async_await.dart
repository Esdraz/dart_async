Future<void> main() async {
  // Callback -----
  // processo1().then((mensagem) {
  //   processo2()
  //       .then((mensagem) => print(mensagem))
  //       .catchError((onError) => print(onError));
  //   print('Mensagem é $mensagem');
  // }).catchError((onError) {
  //   print(onError);
  // });

  print('Inicio do main');
  var mensagem = await processo1();
  print(mensagem);
  var mensagem2 = await processo2();
  print(mensagem2);
  try {
    await processo3();
  } on Exception catch (e) {
    print('Erro na chamado do processo P3, tipo de erro: $e');
  }
  print('Fim do main');
}

Future<String> processo1() {
  print('Inicio P1');

  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P1');
}

Future<String> processo2() {
  print('Inicio P2');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P2');
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 1), () => throw Exception());
}
