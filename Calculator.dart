import 'dart:io';

void main() {
  print('Simple Dart Calculator');

  stdout.write('Enter first number: ');
  double? num1 = double.tryParse(stdin.readLineSync()!);

  if (num1 == null) {
    print('Invalid input for first number.');
    return;
  }

  stdout.write('Enter operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();

  stdout.write('Enter second number: ');
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if (num2 == null) {
    print('Invalid input for second number.');
    return;
  }

  double? result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print('Error: Division by zero');
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('Invalid operator');
      return;
  }

  print('Result: $num1 $operator $num2 = $result');
}