///tamang import lang
import 'dart:io';
import 'dart:math';


/// Player input a value
String getPlayerMove() {
  print("(Papel, Gunting, Bato)");
  String input = stdin.readLineSync();
  
///Choices of player
 if (input == 'papel' || input == 'PAPEL' || input == 'Papel' ||
  input == 'gunting' || input == 'GUNTING' || input == 'Gunting' || 
  input == 'bato' || input == 'BATO' || input == 'Bato') { 
    var playerMove;

    if (input == 'papel' || input == 'PAPEL' || input == 'Papel') 
    {
      return "✋";
    }
      else if  (input == 'gunting' || input == 'GUNTING' || input == 'Gunting') 
      {
        return "✌️";
      } 
      else if  (input == 'bato' || input == 'BATO' || input == 'Bato')
      {
        return "🤜";
      }
}
}


/// Computer return a random move
String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);  //random int from 0 to 2
  
  switch (move) {
    case 0:
      return "✋";
      break;
    case 1:
      return "✌️";
      break;
    case 2:
      return "🤛";
      break;
    default:
      break;
  }
}


/// Determine and compare if the player or the computer won
String whoWon(String playerMove, String computerMove) {
  if (playerMove == computerMove) {  //if the same, it's a tie
    return "Naku po! Patas ang Laban mga Kapatid!";
  } 
    else if (playerMove == "🤜" && computerMove == "🤛")
  {
    return "Naku po! Patas ang Laban mga Kapatid!";
  } 
    else if (playerMove == "✋" && computerMove == "🤛")
  {
    return "Congrats dude! 💪 You Win!";
  } 
    else if (playerMove == "✌️" && computerMove == "✋") 
  {
    return "Congrats dude! 💪 You Win!";
  } 
    else if (playerMove == "🤜" && computerMove == "✌️") 
  {
    return "Congrats dude! 💪 You Win!";
  } 
  else //if it's not a tie and player didn't win, computer won
  {  
    return "GG! Bot Wins! 🤝";
  }
}


void main() {

  while(true) {  //main game loop
    print("Choose your Fighter!");
    String playerMove = getPlayerMove();
    
    if (playerMove == "Quit") 
    {
      return;  //returning from void function exits it
    }
    
    String computerMove = getComputerMove();
    print("Player: $playerMove " + " - " + "$computerMove :Bot");
    print(whoWon(playerMove, computerMove));
  }
}