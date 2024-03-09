import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class LamProvider extends QuizProvider {
  LamProvider() : super(qlamEasy);

  @override
  List<Question> questions = qlamEasy;  // can i check here or not

  @override
  String get page => 'اللامات';
}
