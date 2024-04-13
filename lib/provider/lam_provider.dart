import '../model/question_without_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class LamProvider extends QuizProvider {
  LamProvider() : super(qlam);

  @override
  List<QuestionWithoutMedia> questions = qlam;

  @override
  String get page => 'اللامات';
}
