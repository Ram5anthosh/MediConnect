// import 'package:flutter/foundation.dart';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  //final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      //mainAxisSize: MainAxisSize.min,

      children: [
        const SizedBox(height: 80,),
        Text(
          'Real Time Heart Rate Graph                      ',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            background: Paint()
              ..strokeWidth = 30.0
              ..color = const Color.fromARGB(255, 206, 211, 214)
              ..style = PaintingStyle.stroke
              ..strokeJoin = StrokeJoin.round),
        ),
      const SizedBox(height: 15,),
        Image.asset(
          'assets/heartRateGraph.jpeg',
          opacity: const AlwaysStoppedAnimation(.5),
        ),
        const SizedBox(height: 10),
        Image.asset(
          'assets/heartBlink.gif',
          opacity: const AlwaysStoppedAnimation(.5),
          height: 290,
          width: 800,
          //fit:
        ),
        
        const SizedBox(height:15),
        Text('Current Heart Rate     :     89 bpm',
          style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          background: Paint()
            ..strokeWidth = 30.0
            ..color = const Color.fromARGB(255, 134, 182, 205)
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
        ) ,
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 56, 52, 52)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'See Health Report',
            ))
      ],
    ));
  }
}