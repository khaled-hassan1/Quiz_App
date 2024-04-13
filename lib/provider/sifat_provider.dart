import '../model/question_with_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class SifatProvider extends QuizProvider {
  SifatProvider() : super(qSifat);

  @override
  List<QuestionWithImageOrSound> questions = qSifat;

  @override
  String get page => 'صفات الحروف';
}
