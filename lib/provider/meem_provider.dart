import '../model/question_without_media.dart';

import '../model/questions_list.dart';
import './base_provider.dart';

class MeemProvider extends QuizProvider {
  MeemProvider() : super(qMeem);

  @override
  List<QuestionWithoutMedia> questions = qMeem;

  @override
  String get page => 'الميم الساكنة';
}
