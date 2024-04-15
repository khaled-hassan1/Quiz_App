import '../model/question_without_media.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class SifatProvider extends QuizProvider {
  SifatProvider() : super(qSifat);

  @override
  List<QuestionWithoutMedia> questions = qSifat;

  @override
  String get page => 'صفات الحروف';
}
