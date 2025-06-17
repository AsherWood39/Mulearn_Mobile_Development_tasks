import 'dart:io';

void main() {
  print("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Enter your phone number:");
  String? ph = stdin.readLineSync();
  print("Enter your Age:");
  int? age = int.tryParse(stdin.readLineSync()!);
  print("Enter your height in cm:");
  double? height = double.tryParse(stdin.readLineSync()!);
  print("Enter your weight in kg:");
  double? weight = double.tryParse(stdin.readLineSync()!);
  print("Enter your Address:");
  String? address = stdin.readLineSync();
  print("Enter your hobbies (seperated by commas):");
  String? input = stdin.readLineSync();
  List<String> hobbies = [];
  if (input != null && input.isNotEmpty) {
    hobbies = input.split(',').map((hobby) => hobby.trim()).toList();
  }

  print('\n------ . D . E . T . A . I . L . S . ------');
  print('\n\tName: $name');
  print('\tPhone Number: $ph');
  print('\tAge: $age');
  print('\tHeight: $height');
  print('\ttWeight: $weight');
  print('\tAddress: $address');
  print("\tYour hobbies are:");
  for (String hobby in hobbies) {
    print("\t\t- $hobby");
  }
  print('\n-------------------------------------------');
}
