import '../model/medium_questions.dart';
import '../model/model.dart';
import '../provider/base_provider.dart';

class LamMediumProvider extends QuizProvider {
  LamMediumProvider() : super(qlamMedium);

  @override
  List<Question> questions = qlamMedium;

  @override
  String get page => 'اللامات';
}
