import 'dart:io';

void main(List<String> arguments) {
  print('Olá, me chamo Dart! Qual é o seu nome?');
  var entrada = stdin.readLineSync();
  print('Prazer em te conhecer, $entrada!');
  print('Vamos fazer algo juntos com Dart!');
}
