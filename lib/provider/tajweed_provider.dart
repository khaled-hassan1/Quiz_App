import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class TajweedProvider extends QuizProvider {
  TajweedProvider() : super(qtajweedEasy);

  @override
  List<Question> questions = qtajweedEasy;

  @override
  String get page => 'مبادئ علم التجويد';
}