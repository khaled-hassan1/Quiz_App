import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class MethlanProvider extends QuizProvider {
  MethlanProvider() : super(qMethlanEasy);

  @override
  List<Question> questions = qMethlanEasy;

  @override
  String get page => 'المتماثلان والمتقاربان والمتجانسان';
}