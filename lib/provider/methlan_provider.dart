import '../model/question_without_media.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class MethlanProvider extends QuizProvider {
  MethlanProvider() : super(qMethlan);

  @override
  List<QuestionWithoutMedia> questions = qMethlan;

  @override
  String get page => 'المتماثلان والمتقاربان والمتجانسان';
}
