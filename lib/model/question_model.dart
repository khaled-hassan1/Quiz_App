// class Question {
//   final String question;
//   final List<String> options;
//   final int correctAnswerIndex;

//   Question(
//       {required this.question,
//       required this.options,
//       required this.correctAnswerIndex});
// }
import 'package:flutter/material.dart';

@immutable
abstract class Question {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const Question({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}
