// Ask the user for a number and determine whether the number is prime or not.

import 'dart:io';

void main(){
  print('Enter a number to check if it is prime:');
  checkPrimeNumber();
}
void checkPrimeNumber(){
  String inputNumber = stdin.readLineSync()!;
  int number = int.parse(inputNumber);

  if(number<= 1){
    return print('$number is not a prime number.');
  }
  for(int i =2 ; i<=number~/2;i++){
    if(number%i==0){
      print('$number is not a prime number.');
      return;
    }
  }
  print('$number is a prime number.');
}