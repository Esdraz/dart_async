import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

Future<void> main() async {
  // await buscarCep();
  // await buscarPosts();
  // await buscarCepErro();
  await salvarPost();
  await atualizarPost();
}

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapRequest = {
    'title': 'Post Novo',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapRequest));
  print(response.statusCode);
  print(response.body);
}

Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var mapRequest = {
    'id': 1,
    'title': 'Post Alterado',
    'body': 'Descricao do post',
    'userId': 1
  };
  var response = await http.put(Uri.parse(url),
      body: convert.jsonEncode(mapRequest),
      headers: {'Content-type': 'application/json; charset=UTF-8'});
  print(response.statusCode);
  print(response.body);
}

Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      // responseData.forEach((element) => print(element));
      responseData.forEach((element) => print(element['id']));
    }
  }
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print(responseData['cep']);
    print(responseData['logradouro']);
    print(responseData['localidade']);
  }
}

Future<void> buscarCepErro() async {
  var url = 'https://viacep.com.br/ws/099999/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print(responseData['cep']);
    print(responseData['logradouro']);
    print(responseData['localidade']);
  } else {
    print(
        'Ocorreu um problema... Status Code: ${response.statusCode} ${response.reasonPhrase}');
  }
}
