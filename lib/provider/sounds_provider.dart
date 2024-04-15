import '../model/question_with_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class SoundsProvider extends QuizProvider {
  SoundsProvider() : super(qSounds);

  @override
  List<QuestionWithImageOrSound> questions = qSounds;

  @override
  String get page => 'صوتيات';
}
