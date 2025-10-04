// Make a two-player Rock-Paper-Scissors game against computer.

// Ask for player's input, compare them, print out a message to the winner.

import 'dart:io';

void main() {
  print('Welcome to Rock-Paper-Scissors!');
  print("    -----------------------------    ");
  print('Enter your choice (rock, paper, scissors):');
  String playerChoice = stdin.readLineSync()!;
  rpsGame(playerChoice);
}

rpsGame(String playerChoice) {
  List<String> choices = ['rock', 'paper', 'scissors'];

  // Randomly select computer's choice
  String computerChoice = (choices..shuffle()).first;
  switch (playerChoice) {
    case 'rock':
      if (computerChoice == 'rock') {
        print('It\'s a tie! Both chose rock.');
      } else if (computerChoice == 'paper') {
        print('Computer wins! Paper covers rock.');
      } else {
        print('You win! Rock crushes scissors.');
      }
      break;
    case 'paper':
      if (computerChoice == 'rock') {
        print('You win! Paper covers rock.');
      } else if (computerChoice == 'paper') {
        print('It\'s a tie! Both chose paper.');
      } else {
        print('Computer wins! Scissors cut paper.');
      }
      break;
    case 'scissors':
      if (computerChoice == 'rock') {
        print('Computer wins! Rock crushes scissors.');
      } else if (computerChoice == 'paper') {
        print('You win! Scissors cut paper.');
      } else {
        print('It\'s a tie! Both chose scissors.');
      }
      break;
    default:
      print('Invalid choice. Please choose rock, paper, or scissors.');
  }
}
