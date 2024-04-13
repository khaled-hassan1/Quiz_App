import '../model/question_with_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class MakharejProvider extends QuizProvider {
  MakharejProvider() : super(qmakharej);

  @override
  List<QuestionWithImageOrSound> questions = qmakharej;

  @override
  String get page => 'مخارج الحروف';
}
