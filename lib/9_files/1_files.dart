import 'dart:io';

Future<void> main() async {
  var file = File('lib/9_files/files/file.txt');

  // leitura sincrona
  // var fileData = file.readAsStringSync();
  // print(fileData);

  // leitura assincrona
  // var fileData = await file.readAsString();
  // print(fileData);

  // leitura linha sincrona
  // var fileLista = file.readAsLinesSync();
  // print(fileLista[0]);

  // leitura linha assincrona
  var fileLista = await file.readAsLines();
  print(fileLista[8]);

  // escrita no arquivo
  // escrita assincrona
  // var file2 = File('lib/9_files/files/file2.txt');
  // await file2.writeAsString('teste de escrita em arquivo\n',
  //     mode: FileMode.append);

  // escrita sincrona
  var file2 = File('lib/9_files/files/file2.txt');
  file2.writeAsStringSync('teste de escrita em arquivo\n',
      mode: FileMode.append);

  // escrita em lista
  var listaNomes = ['Francisco', 'Jose', 'Maria', 'Tereza'];
  var file3 = File('lib/9_files/files/file3.txt');
  var writeFile = file3.openWrite(mode: FileMode.append);

  listaNomes.forEach((nome) => writeFile.write('$nome\n'));
}
