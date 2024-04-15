import '../model/question_without_media.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class NoonProvider extends QuizProvider {
  NoonProvider() : super(qNoon);

  @override
  List<QuestionWithoutMedia> questions = qNoon;

  @override
  String get page => 'النون الساكنة والتنوين';
}
