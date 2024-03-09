// import 'package:flutter/material.dart';

// import '../model/easy_questions.dart';
// import '../model/model.dart';

// class MododProvider with ChangeNotifier {
//   int _currentQuestionIndex = 0;
//   int _scoreCorrect = 0;
//   int _scoreIncorrect = 0;
//   String page='المدود';

//   final List<Question> _questions = qModod;
//   int get currentQuestionIndex => _currentQuestionIndex;

//   int get scoreCorrect => _scoreCorrect;

//   int get scoreIncorrect => _scoreIncorrect;

//   List<Question> get questions => _questions;

//   bool get isQuizFinished => _currentQuestionIndex == _questions.length;

//   void answerQuestion(int selectedAnswerIndex) {
//     if (selectedAnswerIndex < 0 ||
//         selectedAnswerIndex >=
//             _questions[currentQuestionIndex].options.length) {
//       throw ('Invalid answer index: $selectedAnswerIndex');
//     } else if (selectedAnswerIndex ==
//         _questions[currentQuestionIndex].correctAnswerIndex) {
//       _scoreCorrect++;
//     } else {
//       _scoreIncorrect++;
//     }
//     _currentQuestionIndex++;
//     notifyListeners();
//   }

//   void nextQuestion(int indexQuestion) {
//     if (indexQuestion < _questions.length - 1) {
//       _currentQuestionIndex++;
//     }
//     notifyListeners();
//   }

//   void previousQuestion(int indexQuestion) {
//     if (indexQuestion > 0) {
//       _currentQuestionIndex--;
//     }
//     notifyListeners();
//   }

//   void restartQuiz() {
//     _currentQuestionIndex = 0;
//     _scoreCorrect = 0;
//     _scoreIncorrect = 0;
//     notifyListeners();
//   }
// }
import '../model/model.dart';
import '../model/easy_questions.dart';
import './base_provider.dart';

class MododProvider extends QuizProvider {
  MododProvider() : super(qMododEasy);

  @override
  List<Question> questions = qMododEasy;

  @override
  String get page => 'المدود';
}
