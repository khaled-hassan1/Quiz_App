import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/quiz_screen.dart';
import '../provider/noon_provider.dart';


class NoonScreen extends StatelessWidget {
  static String route = '/noon-screen';

  const NoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizScreen(provider: Provider.of<NoonProvider>(context));
  }
}



// class NoonScreen extends StatelessWidget {
//   static String route = '/noon-screen';
//   const NoonScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<NoonProvider>(context);

//     final isQuizFinished = provider.isQuizFinished;
//     final rotate = MediaQuery.of(context).orientation;
//     final landscape = rotate == Orientation.landscape;

//     if (isQuizFinished) {
//       return ResultScreen(provider: provider, namePage: provider.page);
//     }
//     final currentQuestion = provider.questions[provider.currentQuestionIndex];
//     List<String> shuffledOptions = List.from(currentQuestion.options)
//       ..shuffle();

//     return SafeArea(
//       child: Scaffold(
//         body: GradientContainer(
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               if (!landscape) {
//                 return SingleChildScrollView(
//                   child: Center(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         const SizedBox(height: 15),
//                         RowNumOfQuestion(provider: provider),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             bottom: 10,
//                             right: 10,
//                             top: 30,
//                             left: 10,
//                           ),
//                           child: Text(
//                             '${(provider.currentQuestionIndex + 1).toString()}:  ${currentQuestion.question}',
//                             textDirection: TextDirection.rtl,
//                             style: Theme.of(context).textTheme.titleMedium,
//                           ),
//                         ),
//                         ...shuffledOptions.asMap().entries.map((e) {
//                           final index = e.key;
//                           final option = e.value;
//                           return Container(
//                             margin: const EdgeInsets.all(6),
//                             padding: const EdgeInsets.only(left: 10, right: 10),
//                             child: TextButton(
//                               onPressed: () => provider.answerQuestion(index),
//                               child: Text(
//                                 option,
//                                 textAlign: TextAlign.center,
//                               ),
//                             ),
//                           );
//                         }),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         CustomElevatedButton(provider: provider),
//                         RowCorrectAndInCorrect(provider: provider),
//                       ],
//                     ),
//                   ),
//                 );
//               } else {
//                 return Row(
//                   children: [
//                     Container(
//                       width: 110,
//                       color: Colors.white10,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Text.rich(
//                             TextSpan(children: [
//                               const TextSpan(text: ':صحيح\n'),
//                               TextSpan(
//                                 text: provider.scoreCorrect.toString(),
//                                 style: const TextStyle(
//                                   fontWeight: FontWeight.w900,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ]),
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text.rich(
//                             TextSpan(children: [
//                               const TextSpan(text: ':خطأ\n'),
//                               TextSpan(
//                                 text: provider.scoreIncorrect.toString(),
//                                 style: const TextStyle(
//                                   fontWeight: FontWeight.w900,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ]),
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         alignment: Alignment.center,
//                         child: SingleChildScrollView(
//                           child: Column(
//                             children: [
//                               RowNumOfQuestion(provider: provider),
//                               Padding(
//                                 padding: const EdgeInsets.only(
//                                   bottom: 10,
//                                   right: 10,
//                                   top: 10,
//                                   left: 10,
//                                 ),
//                                 child: Text(
//                                   '${(provider.currentQuestionIndex + 1).toString()}:  ${currentQuestion.question}',
//                                   textDirection: TextDirection.rtl,
//                                   style:
//                                       Theme.of(context).textTheme.titleMedium,
//                                 ),
//                               ),
//                               ...currentQuestion.options
//                                   .asMap()
//                                   .entries
//                                   .map((e) {
//                                 final index = e.key;
//                                 final option = e.value;
//                                 return Container(
//                                   margin: const EdgeInsets.all(5),
//                                   padding: const EdgeInsets.only(
//                                       left: 10, right: 10),
//                                   child: TextButton(
//                                     onPressed: () =>
//                                         provider.answerQuestion(index),
//                                     child: Text(option),
//                                   ),
//                                 );
//                               }),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               // const CustomElevatedButton(),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



