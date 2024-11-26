import 'dart:math';
import 'package:flutter/material.dart';

final randomizer=Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override

  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends  State<DiceRoller>{
  
  var currentDiceRoller=2;

  void rollDice() {
    
    setState(() {
      currentDiceRoller=randomizer.nextInt(6) + 1;
       
    });
   
    
  }


  @override

 Widget build(context) {
   return  Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            
            Image.asset(
              'assets/images/dice-$currentDiceRoller.png',
              width: 200,
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll dice'),
            )
          ],
        );
  }
  }
