import '../model/medium_questions.dart';
import '../model/model.dart';
import '../provider/base_provider.dart';

class TajweedMediumProvider extends QuizProvider {
  TajweedMediumProvider() : super(qtajweedMedium);

  @override
  List<Question> questions = qtajweedMedium;

  @override
  String get page => 'مبادئ علم التجويد';
}