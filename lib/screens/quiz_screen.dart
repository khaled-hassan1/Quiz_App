// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/names_provider.dart';
import '../screens/options_screen.dart';
import '../widgets/alert_name_widget.dart';
import '../widgets/alert_teacher_widget.dart';
import '../model/question_model.dart';
import '../model/questions_list.dart';
import '../widgets/app_settings.dart';
import '../screens/failed_screen.dart';
import '../screens/certificate_screen.dart';
import '../provider/base_provider.dart';
import '../widgets/answer_option.dart';
import '../widgets/banner_ads.dart';
import '../widgets/correct_incorrect.dart';
import '../widgets/gradient_container.dart';
import '../widgets/hearing_button.dart';
import '../widgets/makharej_image_widget.dart';
import '../widgets/num_of_quiz.dart';
import '../widgets/question_text.dart';

@immutable
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

    final bool nullTeacherChoseFromUser =
        Provider.of<NamesProvider>(context, listen: false).teacherName == null;
    final bool nullNameFromUser =
        Provider.of<NamesProvider>(context, listen: false).userName ==
            'لا يوجد';
    if (nullNameFromUser && nullTeacherChoseFromUser) {
      return alert(context, 'من فضلك ادخل الاسم واختر اسم المعلم!',
          nullNameFromUser, nullTeacherChoseFromUser);
    } else if (nullTeacherChoseFromUser) {
      return alert(context, 'من فضلك اختر اسم المدرس!', nullNameFromUser,
          nullTeacherChoseFromUser);
    } else if (nullNameFromUser) {
      return alert(context, 'من فضلك ادخل الاسم!', nullNameFromUser,
          nullTeacherChoseFromUser);
    }

    final Question currentQuestion =
        provider.questions[provider.currentQuestionIndex];

    final double progress =
        (provider.currentQuestionIndex) / provider.questions.length;
    final bool isQmakharej = provider.questions == qMakharej;
    final bool isPhonics = provider.questions == qPhonics;

    return SafeArea(
      child: isQmakharej
          ? InteractiveViewer(
              boundaryMargin: AppSettings.edgeInsetsAll(50),
              child: willPopScope(
                context,
                !AppSettings.platformIos
                    ? androidView(progress, isSuccess, isSuccessAll, context,
                        isQmakharej, isPhonics, currentQuestion)
                    : iosView(progress, context, currentQuestion),
              ),
            )
          : willPopScope(
              context,
              androidView(progress, isSuccess, isSuccessAll, context,
                  isQmakharej, isPhonics, currentQuestion)),
    );
  }

  CupertinoPageScaffold iosView(
      double progress, BuildContext context, Question currentQuestion) {
    return CupertinoPageScaffold(
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
                      borderRadius: AppSettings.borderRadiusCircle(20),
                      backgroundColor: AppSettings.white,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.greenAccent.shade400,
                      ),
                    ),
                    AppSettings.sizedBox(10),
                    Container(
                      alignment: AppSettings.alignmentCenter,
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
    );
  }

  WillPopScope willPopScope(BuildContext context, Widget child) {
    return WillPopScope(
      onWillPop: () async {
        showConfirmationSnackBar(context, provider);
        return false;
      },
      child: child,
    );
  }

  Scaffold androidView(
      double progress,
      bool isSuccess,
      bool isSuccessAll,
      BuildContext context,
      bool isQmakharej,
      bool isPhonics,
      Question currentQuestion) {
    return Scaffold(
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
                      borderRadius: AppSettings.borderRadiusCircle(20),
                      backgroundColor: AppSettings.white,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        isSuccess || isSuccessAll
                            ? Colors.greenAccent.shade400
                            : Colors.blue.shade500,
                      ),
                    ),
                    AppSettings.sizedBox(10),
                    Container(
                      alignment: AppSettings.alignmentCenter,
                      margin: AppSettings.edgeInsetsAll(10),
                      padding: AppSettings.edgeInsetsAll(4),
                      child: Text(
                        provider.page,
                        textDirection: AppSettings.rtl,
                        textAlign: AppSettings.center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    RowNumOfQuestion(provider: provider),
                    AppSettings.sizedBox(25),
                    if (isQmakharej)
                      AppSettings.putPadding(
                        8.0,
                        ImageWidget(provider: provider),
                      ),
                    if (isPhonics)
                      AppSettings.putPadding(
                        8.0,
                        HearingWidget(
                          provider: provider,
                          soundPaths:
                              qPhonics[provider.currentQuestionIndex].soundPath,
                        ),
                      ),
                    QuestionText(provider: provider),
                    ...buildAnswerOptions(provider, currentQuestion),
                    RowCorrectAndInCorrect(provider: provider),
                  ],
                ),
              ),
            ),
            if (AppSettings.platformIos)
              CupertinoButton.filled(
                  child: const Text('رجوع'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            const BannerAds(),
          ],
        ),
      ),
    );
  }

  Scaffold alert(BuildContext context, String content, bool isNameNull,
      bool isNameTeacherNull) {
    final NamesProvider nameProvider =
        Provider.of<NamesProvider>(context, listen: false);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController();

    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pushReplacementNamed(context, OptionsScreen.route);
          return false;
        },
        child: Directionality(
          textDirection: AppSettings.rtl,
          child: AlertDialog(
            title: Text(
              content,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontSize: 25),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    if (isNameTeacherNull && isNameNull) {
                      Navigator.of(context)
                          .pushReplacementNamed(OptionsScreen.route);
                    } else if (isNameTeacherNull) {
                      alertTeacherNameIsNull(context, nameProvider);
                    } else if (isNameNull) {
                      alertNameIsNull(
                          context, controller, formKey, nameProvider);
                    }
                  },
                  child: const Text('موافق')),
            ],
          ),
        ),
      ),
    );
  }

  void alertTeacherNameIsNull(
      BuildContext context, NamesProvider nameProvider) async {
    Navigator.pop(context);
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) =>
            AlertTeacherWidget(rtl: AppSettings.rtl, provider: nameProvider));
  }

  void alertNameIsNull(BuildContext context, TextEditingController controller,
      GlobalKey<FormState> formKey, NamesProvider nameProvider) async {
    Navigator.pop(context);
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertNameWidget(
            controller: controller,
            formKey: formKey,
            rtl: AppSettings.rtl,
            provider: nameProvider));
  }

  List<Widget> buildAnswerOptions(
      QuizProvider provider, Question currentQuestion) {
    return currentQuestion.options.asMap().entries.map((e) {
      final index = e.key;
      final option = e.value;
      return AnswerOption(
        option: option,
        onTap: () async {
          if (currentQuestion.correctAnswerIndex == index) {
            await AppSettings.makeSound('sounds/correct.mp3');
          } else {
            await AppSettings.makeSound('sounds/wrong.mp3');
          }
          provider.answerQuestion(index);
        },
      );
    }).toList()
      ..shuffle();
  }

  void showConfirmationSnackBar(BuildContext context, QuizProvider provider) {
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
                  AppSettings.makeSound('sounds/click-button.mp3');
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
}
