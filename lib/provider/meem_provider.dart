import '../model/easy_questions.dart';
import './base_provider.dart';
import '../model/model.dart';

class MeemProvider extends QuizProvider {
  MeemProvider() : super(qMeemEasy);

  @override
  List<Question> questions = qMeemEasy;

  @override
  String get page => 'الميم الساكنة';
}
