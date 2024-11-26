// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
 const  GradientContainer(this.color1, this.color2, {super.key});

 const GradientContainer.purple({super.key})
     :color1=Colors.deepPurple,
     color2=Colors.indigo;

  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//  const GradientContainer(this.color1,this.color2,{super.key});

//  final Color color1;
//  final Color color2;
//   @override
//   Widget build( context) {
//     // TODO: implement build
//     return  Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [color1,color2],
//               begin: startAlignment ,
//               end: endAlignment,
//             ),
//           ),
//           child: const Center(
//             child:StyledText('hello worldd!!'),
//           ),
//         ) ; 
//   }
// }