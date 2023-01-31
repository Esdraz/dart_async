import 'dart:async';

Future<void> main() async {
  print('Inicio main');
  scheduleMicrotask(() => print('Microtask #1'));
  await Future.delayed(Duration(seconds: 1), () => print('Future #1 Delayed'));
  await Future(() {
    var i = 0;
    while (i < 200000) {
      i++;
    }
    print('Future #2');
  });
  scheduleMicrotask(() => print('Microtask #2'));
  await Future(() => print('Future #3'));
  print('Fim main');
}
/**
 * Event
 * Future.delayed - Iniciar
 * Future #2 - executou
 * Future #3 - executou
 */

/**
 * MicroTask
 * Main - OK
 * Microtask #1 - OK
 * Microtask #2 - OK
 */