import 'package:flutter/material.dart';
import 'BoardButton.dart';

class XOBoard extends StatefulWidget {
  @override
  _XOBoardState createState() => _XOBoardState();
}

class _XOBoardState extends State<XOBoard> {
int playingCounter=0;
int XScore=0;
int OScore=0;


List<String> boardStatus=['','','',
                          '','','',
                          '','',''];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                'player 1 (X)      player 2(O)',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Text(
                '${playingCounter%2==0?'X':'O'} turn',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Player 1 : $XScore   ',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                  Text(
                    'Player 2 : $OScore  ',
                    style: TextStyle(
                        fontSize: 20.0
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardButton (boardStatus[0],0,onPlayerClick),
              BoardButton (boardStatus[1],1,onPlayerClick),
              BoardButton (boardStatus[2],2,onPlayerClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardButton (boardStatus[3],3,onPlayerClick),
              BoardButton (boardStatus[4],4,onPlayerClick),
              BoardButton (boardStatus[5],5,onPlayerClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoardButton (boardStatus[6],6,onPlayerClick),
              BoardButton (boardStatus[7],7,onPlayerClick),
              BoardButton (boardStatus[8],8,onPlayerClick),
            ],
          ),
        ),
      ],
    );
  }
  void onPlayerClick(int position){
    if(boardStatus[position].isNotEmpty)
      return;
    setState(() {
     if (playingCounter%2==0)
        boardStatus[position]='X';
      else
        boardStatus[position]='O';
      playingCounter++;
     checkWinner('X');
     checkWinner('O');
     if (playingCounter==9)
       resetGame();
    });
  }
  void checkWinner(String player){
    if(boardStatus[0]==player &&
        boardStatus[1]==player &&
        boardStatus[2]==player){
      playerWon(player);
    }
    else if(boardStatus[3]==player &&
        boardStatus[4]==player &&
        boardStatus[5]==player){
      playerWon(player);
    }
    else if(boardStatus[6]==player &&
        boardStatus[7]==player &&
        boardStatus[8]==player){
      playerWon(player);
    }
    else if(boardStatus[0]==player &&
        boardStatus[3]==player &&
        boardStatus[6]==player){
      playerWon(player);
    }
    else if(boardStatus[1]==player &&
        boardStatus[4]==player &&
        boardStatus[7]==player){
      playerWon(player);
    }
    else if(boardStatus[2]==player &&
        boardStatus[5]==player &&
        boardStatus[8]==player){
      playerWon(player);
    }
    else if(boardStatus[0]==player &&
        boardStatus[4]==player &&
        boardStatus[8]==player){
      playerWon(player);
    }
    else if(boardStatus[2]==player &&
        boardStatus[4]==player &&
        boardStatus[6]==player){
      playerWon(player);
    }


  }
  void playerWon(String player){
    if(player=='X')
      XScore+=3;
    else if(player=='O')
      OScore+=3;
    resetGame();


  }
  void resetGame(){
   setState(() {
     playingCounter=0;
     boardStatus =['','','',
                   '','','',
                   '','',''];
   });
  }
}
