import 'package:flutter/material.dart';
import './question_model.dart';

@immutable
class QuestionWithoutMedia implements Question {
  @override
  final int correctAnswerIndex;

  @override
  final List<String> options;

  @override
  final String question;

  const QuestionWithoutMedia(
      {required this.correctAnswerIndex,
      required this.options,
      required this.question});
}
