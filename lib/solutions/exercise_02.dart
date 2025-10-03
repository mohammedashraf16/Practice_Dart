import 'dart:io';

void main(){
  print('Enter your number:');
  int inputNumber = int.parse(stdin.readLineSync()!);
  if(inputNumber%2==0){
    print('$inputNumber is even number');
  } 
  else {
    print('$inputNumber is odd number');
  }
}