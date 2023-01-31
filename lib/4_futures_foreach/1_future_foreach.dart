Future<void> main() async {
  var nomes = ['Pedro', 'Jose', 'Maria'];

  print('Inicio');

  // await Future.forEach<String>(nomes, (nome) async {
  //   print(await saudacao(nome));
  // });

  // demora 1 segundo pra exercutar cada nome
  // for (var nome in nomes) {
  //   print(await saudacao(nome));
  // }

  // executar os 3 nomes em 1seg
  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);

  // nomes.forEach((nome) async {
  //   print(await saudacao(nome));
  // });
  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(Duration(seconds: 1), (() {
    print('Fim $nome');
    return 'Olá $nome';
  }));
}
