import 'dart:io';

void main() {
  stdout.write("Enter the 2 numbers (space separated): ");
  var input = stdin.readLineSync()?.split(' ');
  if (input == null || input.length < 2) return;
  try {
    var a = int.parse(input[0]), b = int.parse(input[1]);
    print('Sum of $a and $b is : ${a + b}');
  } catch (e) {
    print('Invalid input');
  }
}
