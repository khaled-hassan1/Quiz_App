import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../widgets/app_settings.dart';
import '../screens/failed_screen.dart';
import '../screens/certificate_screen.dart';
import '../model/model.dart';
import '../provider/base_provider.dart';
import '../widgets/answer_option.dart';
import '../widgets/banner_ads.dart';
import '../widgets/correct_incorrect.dart';
import '../widgets/gradient_container.dart';
import '../widgets/num_of_quiz.dart';
import '../widgets/question_text.dart';

class QuizScreen extends StatelessWidget {
  final QuizProvider provider;

  const QuizScreen({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    final isQuizFinished = provider.isQuizFinished;
    final isSuccess = provider.isSuccess;
    final isSuccessAll = provider.isSuccessAll;
    if (isQuizFinished) {
      if (isSuccess || isSuccessAll) {
        return CertificateScreen(provider: provider, namePage: provider.page);
      } else {
        return FailedScreen(provider: provider);
      }
    }

    final currentQuestion = provider.questions[provider.currentQuestionIndex];
    final progress =
        (provider.currentQuestionIndex) / provider.questions.length;

    return SafeArea(
      // ignore: deprecated_member_use
      child: WillPopScope(
        onWillPop: () async {
          showConfirmationSnackBar(context, provider);
          return false;
        },
        child: !AppSettings.platform
            ? Scaffold(
                body: GradientContainer(
                  child: Stack(
                    children: [
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              LinearProgressIndicator(
                                value: progress,
                                minHeight: 9.0,
                                borderRadius:
                                    AppSettings.borderRadiusCircle(20),
                                backgroundColor: AppSettings.white,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.greenAccent.shade400,
                                ),
                              ),
                              AppSettings.sizedBox(10),
                              Container(
                                alignment: Alignment.center,
                                margin: AppSettings.edgeInsetsAll(10),
                                padding: AppSettings.edgeInsetsAll(4),
                                child: Text(
                                  provider.page,
                                  textDirection: AppSettings.rtl,
                                  textAlign: AppSettings.center,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              AppSettings.sizedBox(10),
                              RowNumOfQuestion(provider: provider),
                              QuestionText(provider: provider),
                              ...buildAnswerOptions(provider, currentQuestion),
                              RowCorrectAndInCorrect(provider: provider),
                            ],
                          ),
                        ),
                      ),
                      if (AppSettings.platform)
                        CupertinoButton.filled(
                            child: const Text('رجوع'),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      const BannerAds(),
                    ],
                  ),
                ),
              )
            : CupertinoPageScaffold(
                child: GradientContainer(
                  child: Stack(
                    children: [
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              LinearProgressIndicator(
                                value: progress,
                                minHeight: 9.0,
                                borderRadius:
                                    AppSettings.borderRadiusCircle(20),
                                backgroundColor: AppSettings.white,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.greenAccent.shade400,
                                ),
                              ),
                              AppSettings.sizedBox(10),
                              Container(
                                alignment: Alignment.center,
                                margin: AppSettings.edgeInsetsAll(10),
                                padding: AppSettings.edgeInsetsAll(4),
                                child: Text(
                                  provider.page,
                                  textDirection: AppSettings.rtl,
                                  textAlign: AppSettings.center,
                                  style: CupertinoTheme.of(context)
                                      .textTheme
                                      .navLargeTitleTextStyle,
                                ),
                              ),
                              AppSettings.sizedBox(10),
                              RowNumOfQuestion(provider: provider),
                              QuestionText(provider: provider),
                              ...buildAnswerOptions(provider, currentQuestion),
                              RowCorrectAndInCorrect(provider: provider),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 2.0,
                          right: 110.0,
                          child: CupertinoButton.filled(
                              child: const Text('رجوع'), onPressed: () {})),
                      const BannerAds(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  List<Widget> buildAnswerOptions(
      QuizProvider provider, Question currentQuestion) {
    return currentQuestion.options.asMap().entries.map((e) {
      final index = e.key;
      final option = e.value;
      return AnswerOption(
        option: option,
        onTap: () {
          if (currentQuestion.correctAnswerIndex == index) {
            makeSound('sounds/correct.mp3');
          } else {
            makeSound('sounds/wrong.mp3');
          }
          provider.answerQuestion(index);
        },
      );
    }).toList()
      ..shuffle();
  }

  void showConfirmationSnackBar(BuildContext context, dynamic provider) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    provider.restartQuiz();
    scaffoldMessenger
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
              borderRadius: AppSettings.borderRadiusCircle(20)),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: const Text('خروج'),
                onPressed: () {
                  makeSound('sounds/click-button.mp3');
                  Navigator.pop(context);
                },
              ),
              Text(
                ' تمت إعادة الاختبار     ${provider.restartQuizCount}',
                textAlign: TextAlign.left,
              ),
            ],
          ),
          duration: const Duration(seconds: 2),
        ),
      );
  }

  Future<void> makeSound([String path = 'sounds/click-button.mp3']) async {
    try {
      await AppSettings.player.play(AssetSource(path));
    } catch (e) {
      debugPrint('Error: $e');
    }
  }
}
