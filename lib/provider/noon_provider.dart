import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class NoonProvider extends QuizProvider {
  NoonProvider() : super(qNoonEasy);

  @override
  List<Question> questions = qNoonEasy;

  @override
  String get page => 'النون الساكنة والتنوين';
}
