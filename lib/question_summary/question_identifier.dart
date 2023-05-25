import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier(this.questionIndex,
  this.isCorrectAnswer,
  {super.key});
  
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context){
    final questionNumber = questionIndex+1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? 
        Color.fromARGB(255, 118, 123, 230) : const Color.fromARGB(255, 235, 114, 105),
      borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}