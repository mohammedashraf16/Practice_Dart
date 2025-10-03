import 'dart:io';

void main() {
  stdout.write("What's your name?");
  String name = stdin.readLineSync()!;
  print("Hello, $name!");

  print("=========================");
  stdout.write("What's your age?");
  String age = stdin.readLineSync()!;
  int yourAge = int.parse(age);
  int toBehundred = 100 - yourAge;

  print("You will be 100 years old in $toBehundred years");
}
