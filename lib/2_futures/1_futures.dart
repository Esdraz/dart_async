void main() {
  print('Inicio do P1');
  processo2();
  // 2 Status (Incompleto, Concluido (com valor, com erro))
  // Concluido com valor -> Then
  // Concluido com erro -> CatchErro ou OnError
  // WhenComplete sempre sera executado!!
  processo3().then((mensagem) {
    print(mensagem);
  });
  processo4()
      .then((mensagem) => print('Mensagem do P4 $mensagem'))
      .catchError((erro) => print('Erro ao executar processo P4'))
      .whenComplete(() => print('Finalizou com erro'));

  processo4().then(
    (mensagem) => print('Mensagem do P4 $mensagem'),
    onError: (erro) {
      print('Tratando o erro pelo onError do then');
    },
  );

  // processo3().then((mensagem) {
  //   throw Exception();
  // });

  processo4().then(
    (mensagem) => print('Mensagem do P4 $mensagem'),
    onError: (error) {
      print('Tratando o erro pelo onError do then');
    },
  );

  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('Finalizou com sucesso'));

  print('Final do P1');
}

Future<String> processo4() {
  print('Inicio P4');
  return Future.delayed(Duration(seconds: 2), () => throw Exception());
}

Future<String> processo3() {
  print('Inicio P3');
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P3');
}

Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(Duration(seconds: 2), (() {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Fim do P2');
  }));
}
