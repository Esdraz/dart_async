void main() {
  print('Iniciou o processo');
  m2();
  p2();
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  print('Finalizou');
}

void m2() {
  print('Função 2');
}

// processo asyncrono não tem ordem de execucao
void p2() {
  Future.delayed(Duration(seconds: 2), () {
    print('Processo 2 sendo executado');
  });
}
