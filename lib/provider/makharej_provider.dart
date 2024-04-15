import '../model/question_with_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class MakharejProvider extends QuizProvider {
  MakharejProvider() : super(qMakharej);

  @override
  List<QuestionWithImage> questions = qMakharej;

  @override
  String get page => 'مخارج الحروف';
}
