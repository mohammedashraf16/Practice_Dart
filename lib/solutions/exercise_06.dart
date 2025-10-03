// Ask the user for a string and print out whether
// this string is a palindrome or not.
// A palindrome is a string that reads the same forwards and backwards.

import 'dart:io';

void main(){
  print('Enter your string:');
  String inputString = stdin.readLineSync()!;
  String reversedString = inputString.split("").reversed.join("");
  if(inputString == reversedString){
    print("'$inputString' is a palindrome");
  }else{
    print("'$inputString' is not a palindrome");
  }
  // Another Approach
 /* inputString==reversedString?
  print("'$inputString' is a palindrome"):
  print("'$inputString' is not a palindrome");*/
}