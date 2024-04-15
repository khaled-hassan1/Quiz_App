import '../model/question_with_sound.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class PhonicsProvider extends QuizProvider {
  PhonicsProvider() : super(qPhonics);

  @override
  List<QuestionWithSound> questions = qPhonics;

  @override
  String get page => 'الصوتيات';
}
