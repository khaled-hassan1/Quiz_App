import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class TafkhemProvider extends QuizProvider {
  TafkhemProvider() : super(qTafkhemEasy);

  @override
  List<Question> questions = qTafkhemEasy;

  @override
  String get page => 'الترقيق والتفخيم';
}
