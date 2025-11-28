import 'dart:io';

void main() {
  List<String> notas = <String>[];
  menu(notas);
}

String obterComando() {
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada;
  print("Digite um comando: 1- Adicionar nota, 2- Listar notas, 3- Sair");
  entrada = stdin.readLineSync();
  if (entrada != null && comandos.contains(entrada)) {
    return entrada;
  } else {
    print("Comando inválido");
    return obterComando();
  }
}

List<String> adicionarNota(List<String> notas) {
  print("Digite a nota a ser adicionada:");
  String? nota = stdin.readLineSync();
  if (nota != null && nota.isNotEmpty) {
    notas.add(nota);
    print("Nota adicionada com sucesso!");
  } else {
    print("Nota inválida.");
    adicionarNota(notas);
  }
  return notas;
}

void listarNotas(List<String> notas) {
  print("Notas:");
  for (var nota in notas) {
    print(nota);
  }
}

void menu(List<String> notas) {
  var comando = obterComando();
  switch (comando) {
    case "1":
      notas = adicionarNota(notas);
      menu(notas);
      break;
    case "2":
      listarNotas(notas);
      menu(notas);
      break;
    case "3":
      print("Saindo...");
      exit(0);
  }
}
