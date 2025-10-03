// Create a program that asks the user for a number and
// then prints out a list of all the divisors of that number.
import 'dart:io';

void main(){
  print('Enter Your Number : ');
  int inputNumber = int.parse(stdin.readLineSync()!);
  List<int> divisors = [];
  for(int i=1; i<=inputNumber; i++){
    if(inputNumber%i==0){
      divisors.add(i);
    }
  }
  print('Divisors of $inputNumber are : $divisors');
}