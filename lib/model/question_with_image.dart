import 'package:flutter/material.dart';

import 'question_model.dart';

@immutable
class QuestionWithImage implements Question {
  final String imagePath;

  @override
  final int correctAnswerIndex;

  @override
  final List<String> options;

  @override
  final String question;

  const QuestionWithImage({
    required this.correctAnswerIndex,
    required this.options,
    required this.question,
    required this.imagePath,
  });
}
