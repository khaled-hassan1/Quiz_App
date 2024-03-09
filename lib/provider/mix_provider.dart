import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class MixAllProvider extends QuizProvider {
  MixAllProvider() : super(mixAllEasy);

  @override
  List<Question> questions = mixAllEasy;

  @override
  String get page =>
      'مبادئ علم التجويد، النون الساكنة والتنوين، الميم الساكنة، المدود، اللامات، المتماثلان والمتقاربان والمتجانسان، الترقيق والتفخيم';
}
