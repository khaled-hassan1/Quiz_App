import '../model/question_without_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class TafkhemProvider extends QuizProvider {
  TafkhemProvider() : super(qTafkhemEasy);

  @override
  List<QuestionWithoutMedia> questions = qTafkhemEasy;

  @override
  String get page => 'الترقيق والتفخيم';
}
