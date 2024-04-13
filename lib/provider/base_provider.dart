import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../model/questions_list.dart';

class QuizProvider with ChangeNotifier {
  QuizProvider(List<dynamic> question) {
    _questions = question;
  }

  int _currentQuestionIndex = 0;
  int _scoreCorrect = 0;
  int _scoreIncorrect = 0;
  int _restartQuizCount = 0;
  int _allScoreCorrect = 0;
  int _allScoreInCorrect = 0;
  List _questions = [];

  String get dateTime {
    initializeDateFormatting('ar_AR', null);
    DateTime now = DateTime.now();
    String formattedDateTime =
        DateFormat('d/MMM/yyyy\n \t   h:mm a', 'ar_AR').format(now);
    return formattedDateTime;
  }

  String get page => 'انتهت الأسئلة';

  int get currentQuestionIndex => _currentQuestionIndex;

  int get scoreCorrect => _scoreCorrect;

  int get scoreIncorrect => _scoreIncorrect;

  int get restartQuizCount => _restartQuizCount;

  List get questions => _questions;

  bool get isQuizFinished => _currentQuestionIndex == _questions.length;

  bool get isSuccessAll => _allScoreCorrect >= 50;

  int get allScoreCorrect => _allScoreCorrect;

  int get allScoreInCorrect => _allScoreInCorrect;

  bool get isSuccess => _scoreCorrect >= 7;
  void answerQuestion(int selectedAnswerIndex) {
    debugPrint(
        '...............allScoreCorrect.............. $_allScoreCorrect ');
    debugPrint(
        '..............._allScoreInCorrect.............. $_allScoreInCorrect ');
    debugPrint('..............._scoreCorrect.............. $_scoreCorrect ');
    debugPrint(
        '..............._scoreIncorrect.............. $_scoreIncorrect ');

    if (selectedAnswerIndex < 0 ||
        selectedAnswerIndex >=
            _questions[currentQuestionIndex].options.length) {
      throw ('Invalid answer index: $selectedAnswerIndex');
    } else if (selectedAnswerIndex ==
        _questions[currentQuestionIndex].correctAnswerIndex) {
      if (questions == qMixAll) {
        _scoreCorrect = 0;
        _scoreIncorrect = 0;
      } else if (questions != qMixAll) {
        _allScoreCorrect = 0;
        _allScoreInCorrect = 0;
      }
      _scoreCorrect += 1;
      _allScoreCorrect += 1;
    } else {
      _scoreIncorrect++;
      _allScoreInCorrect++;
    }
    _currentQuestionIndex++;
    notifyListeners();
  }

  void nextQuestion(int indexQuestion) {
    if (indexQuestion < _questions.length - 1) {
      _currentQuestionIndex++;
    }
    notifyListeners();
  }

  void previousQuestion(int indexQuestion) {
    if (indexQuestion > 0) {
      _currentQuestionIndex--;
    }
    notifyListeners();
  }

  void restartQuiz() {
    _currentQuestionIndex = 0;
    _scoreCorrect = 0;
    _scoreIncorrect = 0;
    _questions.shuffle();
    _allScoreCorrect = 0;
    _allScoreInCorrect = 0;
    _restartQuizCount++;
    notifyListeners();
  }
}
