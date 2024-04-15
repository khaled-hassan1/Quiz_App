import 'question_model.dart';

class QuestionWithImageOrSound implements Question {
  final String imagePath;
  final String soundPath;

  @override
  final int correctAnswerIndex;

  @override
  final List<String> options;

  @override
  final String question;

  QuestionWithImageOrSound({
    required this.correctAnswerIndex,
    required this.options,
    required this.question,
    required this.imagePath,
    required this.soundPath,
  });
}
