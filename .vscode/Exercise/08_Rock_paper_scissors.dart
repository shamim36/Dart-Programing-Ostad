/*
Make a two-player Rock-Paper-Scissors game against 
computer.
Ask for player’s input, compare them, print out a 
message to the winner.
*/
import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  List<String> options = ['Rock', 'Paper', 'Scissors'];

  for (int i = 0; ; i++) {
    int randomIndex = random.nextInt(options.length);

    print('Enter anything expect 1, 2, 3 to exit');
    stdout.write('Enter your choice 1.Rock / 2.Papper / 3.Scissors : ');
    int choice = int.parse(stdin.readLineSync()!) - 1; // Adjust index

    print('Your choice is: ${options[choice]}');
    print('Computer\'s choice is: ${options[randomIndex]}');
    if(choice > 2 || choice < 0){
      break;
    } // Exit if choice is not valid (1, 2, 3
    if (choice == randomIndex) {
      print('Match Draw');
    } else if ((choice + 1) % 3 == randomIndex) {
      print('OOPS! Computer Won');
    } else {
      print('Hurrah! You Won');
    }
  }
}
