import '../model/question_without_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class TajweedProvider extends QuizProvider {
  TajweedProvider() : super(qtajweedEasy);

  @override
  List<QuestionWithoutMedia> questions = qtajweedEasy;

  @override
  String get page => 'مبادئ علم التجويد';
}
