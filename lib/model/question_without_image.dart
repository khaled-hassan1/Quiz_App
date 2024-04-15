import 'question_model.dart';

class QuestionWithoutMedia implements Question {
  @override
  final int correctAnswerIndex;

  @override
  final List<String> options;

  @override
  final String question;

  QuestionWithoutMedia(
      {required this.correctAnswerIndex,
      required this.options,
      required this.question});
}
