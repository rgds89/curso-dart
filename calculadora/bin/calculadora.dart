import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String entrada;
  List<String> operacoesValidas = ['+', '-', '*', '/'];

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void calcular() {
    if (operacao == '+') {
      soma();
    } else if (operacao == '-') {
      subtracao();
    } else if (operacao == '*') {
      multiplicacao();
    } else if (operacao == '/') {
      divisao();
    } else {
      print('Operação inválida');
    }
  }

  void getOperacao() {
    print('Informe a operação ${operacoesValidas.toString()}:');
    entrada = stdin.readLineSync()!;
    if (entrada.isNotEmpty &&
        operacoesValidas.contains(entrada)) {
      operacao = entrada;
    } else {
      print('Operação inválida');
      getOperacao();
    }
  }

  print('Informe o primeiro número:');
  entrada = stdin.readLineSync()!;
  if (entrada.isNotEmpty) {
    numeroUm = double.parse(entrada);
  }

  getOperacao();

  print('Informe o segundo número:');
  entrada = stdin.readLineSync()!;
  if (entrada.isNotEmpty) {
    numeroDois = double.parse(entrada);
  }

  print("O resultado é: ");
  calcular();
}
