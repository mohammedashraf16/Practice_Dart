// Generate a random number between 1 and 100. Ask the user to guess the number,
// then tell them whether they guessed too low, too high, or exactly right.
import 'dart:io';
import 'dart:math';

void main() {
  print("Type exit to quit the game");
  guessingGame();
}

guessingGame() {
  final random = Random();
  int randomNumber = random.nextInt(100);
  int attempts = 0;
  while(true){
    attempts +=1;
    stdout.write('Guess a number between 1 and 100: ');
    String chosenNumber = stdin.readLineSync()!;

    if(chosenNumber.toLowerCase()=="exit"){
      print("\n Bye!");
      break;
    }else if(int.parse(chosenNumber)>100){
      print("Please choose a number between 1 and 100");
      continue;
    }else if(int.parse(chosenNumber)<0){
      print('Please choose a number between 1 and 100');
      continue;
    }else if(int.parse(chosenNumber)==randomNumber){
      print("Bingo! You tried $attempts times\n");
      continue;
  }else if(int.parse(chosenNumber)>randomNumber){
      print("Too high! Try again.\n");
    }else{
      print("Too low! Try again.\n");
    }
  }
}