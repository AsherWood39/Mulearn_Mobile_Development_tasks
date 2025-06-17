import 'dart:io';

void main() {
  stdout.write('Enter the 2 numbers(space separated) : ');
  var input = stdin.readLineSync()?.split(' ');
  if (input == null || input.length < 2) return;
  try {
    var a = int.parse(input[0]), b = int.parse(input[1]);

    var choice;

    while (choice != '3') {
      stdout.write(
        '\nEnter your choice of Operation (1->Arithmetic, 2->Comparison, 3->Exit) : ',
      );
      choice = stdin.readLineSync();
      switch (choice) {
        case '1':
          print(
            '\n\tMENU : \n\t1. Addition\n\t2. Substraction\n\t3. Multiplication\n\t4. Divison\n',
          );
          stdout.write('Enter the chosen operation : ');
          var op = stdin.readLineSync();
          switch (op) {
            case '1':
              print('Sum of $a and $b is: ${a + b}');
              break;
            case '2':
              print('Difference of $a and $b is: ${a - b}');
              break;
            case '3':
              print('Product of $a and $b is: ${a * b}');
              break;
            case '4':
              b != 0
                  ? print('Quotient of $a / $b is: ${a / b}')
                  : print('Error: Division by zero');
              break;
            default:
              print('Invalid operation');
          }
          break;
        case '2':
          if (a > b) {
            print('Comparing $a and $b : $a is greater than $b');
          } else if (a < b) {
            print('Comparing $a and $b : $a is less than $b');
          } else {
            print('Comparing $a and $b : $a is equal to $b');
          }
          break;
        case '3':
          print('Exiting . . .');
          break;
        default:
          print('Invalid choice');
      }
    }
  } catch (e) {
    print("Invalid input. Please enter integers.");
  }
}
