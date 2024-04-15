import '../model/question_without_image.dart';
import '../model/questions_list.dart';
import './base_provider.dart';

class MixAllProvider extends QuizProvider {
  MixAllProvider() : super(qMixAll);

  @override
  List<QuestionWithoutMedia> questions = qMixAll;

  @override
  String get page =>
      'مبادئ علم التجويد، النون الساكنة والتنوين، الميم الساكنة، المدود، اللامات، المتماثلان والمتقاربان والمتجانسان، الترقيق والتفخيم';
}
