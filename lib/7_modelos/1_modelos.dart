import 'package:dart_async/7_modelos/cidade.dart';
import 'package:dart_async/7_modelos/user_mais_facil.dart';
import 'package:http/http.dart';

void main() {
  // buscarCep();
  buscarUser();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    // var responseData = jsonDecode(response.body);
    // if (responseData is Map) {
    //   print(responseData['cep']);
    //   print(responseData['logradouro']);
    //   print(responseData['localidade']);
    // }

    var cidade = Cidade.fromJson(response.body);
    print(cidade.cep);
    print(cidade.logradouro);
    print(cidade.localidade);

    print(cidade.toMap());
    print(cidade.toJson());
  }
}

Future<void> buscarUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await get(Uri.parse(url));
  if (response.statusCode == 200) {
    var user = UserMaisFacil.fromJson(response.body);
    print(user);
  }
}
