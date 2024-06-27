import 'question_model.dart';
import 'package:flutter/material.dart';

@immutable
class QuestionWithSound implements Question {
  final List<String> soundPath;

  @override
  final int correctAnswerIndex;

  @override
  final List<String> options;

  @override
  final String question;

  const QuestionWithSound({
    required this.correctAnswerIndex,
    required this.options,
    required this.question,
    required this.soundPath,
  });
}
// import 'question_model.dart';

// class QuestionWithSound implements Question {
//   final String soundPath;
   
//   @override
//   final int correctAnswerIndex;

//   @override
//   final List<String> options;

//   @override
//   final String question;

//   QuestionWithSound({
//     required this.correctAnswerIndex,
//     required this.options,
//     required this.question,
//     required this.soundPath,
//   });
// }
