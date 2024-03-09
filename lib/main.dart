import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/medium_screen/tajweed_medium_screen.dart';
import 'package:quiz_app/provider_medium/lam_medium_provider.dart';
import 'package:quiz_app/provider_medium/tajweed_medium_provider.dart';
import 'package:quiz_app/screens/difficult_screen.dart';
import 'package:quiz_app/medium_screen/lam_medium_screen.dart';
import 'package:quiz_app/screens/medium_screen.dart';
import 'package:quiz_app/screens/options_screen.dart';

import '../provider/mix_provider.dart';
import '../screens/mix_screen.dart';
import '../widgets/app_settings.dart';
import '../provider/lam_provider.dart';
import '../provider/methlan_provider.dart';
import '../provider/tafkhem_provider.dart';
import '../screens/lam_screen.dart';
import '../screens/methlan_screen.dart';
import '../screens/tafkhem_screen.dart';
import '../screens/tajwed_screen.dart';
import '../screens/failed_screen.dart';
import '../provider/meem_provider.dart';
import '../screens/meem_screen.dart';
import '../provider/base_provider.dart';
import '../provider/name_provider.dart';
import '../provider/noon_provider.dart';
import '../screens/noon_screen.dart';
import '../screens/easy_test_screen.dart';
import '../provider/modod_provider.dart';
import '../screens/modod_screen.dart';
import '../screens/result_screen.dart';
import '../screens/certificate_screen.dart';
import '../provider/tajweed_provider.dart';
import '../widgets/platform_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => QuizProvider([]),
          ),
          ChangeNotifierProvider(
            create: (_) => MododProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => MixAllProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => NoonProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => NameProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => MeemProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => TajweedProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => LamProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => MethlanProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => TafkhemProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => LamMediumProvider(),
          ),ChangeNotifierProvider(
            create: (_) => TajweedMediumProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MododProvider>(context, listen: false);
    return PlatformWidget(
      androidBuilder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        theme: ThemeData(
          fontFamily: 'Marhey',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: AppSettings.main,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(47, 56, 74, 1),
            foregroundColor: AppSettings.white,
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 25,
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.blue.shade900),
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade50),
              textStyle: const MaterialStatePropertyAll(
                  TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
            ),
          ),
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                fontSize: 30,
                color: AppSettings.white,
              ),
              titleMedium: TextStyle(
                color: AppSettings.white,
                fontSize: 25,
              )),
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppSettings.main,
          ),
          useMaterial3: true,
        ),
        home: const OptionsScreen(),
        // const EasyTestScreen(),
        routes: {
          MododScreen.route: (context) => const MododScreen(),
          NoonScreen.route: (context) => const NoonScreen(),
          ResultScreen.route: (context) =>
              ResultScreen(provider: provider, namePage: ''),
          MeemScreen.route: (context) => const MeemScreen(),
          CertificateScreen.route: (context) => CertificateScreen(
                namePage: '',
                provider: provider,
              ),
          FailedScreen.route: (context) => FailedScreen(
                provider: provider,
              ),
          TajweedScreen.route: (context) => const TajweedScreen(),
          LamScreen.route: (context) => const LamScreen(),
          MehtlanScreen.route: (context) => const MehtlanScreen(),
          TafkhemScreen.route: (context) => const TafkhemScreen(),
          MixScreen.route: (context) => const MixScreen(),
          EasyTestScreen.route: (context) => const EasyTestScreen(),
          DifficultTestScreen.route: (context) => const DifficultTestScreen(),
          MediumTestScreen.route: (context) => const MediumTestScreen(),
          LamMediumScreen.route: (context) => const LamMediumScreen(),
          TajweedMediumScreen.route: (context) => const TajweedMediumScreen(),
        },
      ),
      iosBuilder: (context) => CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Quiz App',
        home: const EasyTestScreen(),
        routes: {
          MododScreen.route: (context) => const MododScreen(),
          NoonScreen.route: (context) => const NoonScreen(),
          ResultScreen.route: (context) =>
              ResultScreen(provider: provider, namePage: ''),
          MeemScreen.route: (context) => const MeemScreen(),
          CertificateScreen.route: (context) => CertificateScreen(
                namePage: '',
                provider: provider,
              ),
          FailedScreen.route: (context) => FailedScreen(
                provider: provider,
              ),
          TajweedScreen.route: (context) => const TajweedScreen(),
          LamScreen.route: (context) => const LamScreen(),
          MehtlanScreen.route: (context) => const MehtlanScreen(),
          TafkhemScreen.route: (context) => const TafkhemScreen(),
          MixScreen.route: (context) => const MixScreen(),
          EasyTestScreen.route: (context) => const EasyTestScreen(),
          DifficultTestScreen.route: (context) => const DifficultTestScreen(),
          MediumTestScreen.route: (context) => const MediumTestScreen(),
          LamMediumScreen.route: (context) => const LamMediumScreen(),
          TajweedMediumScreen.route: (context) => const TajweedMediumScreen(),
        },
        theme: const CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
              navLargeTitleTextStyle: TextStyle(
                fontSize: 20,
                fontFamily: 'Marhey',
                color: AppSettings.white,
                fontWeight: AppSettings.bold,
              ),
              navTitleTextStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Marhey',
                color: AppSettings.white,
                fontWeight: AppSettings.bold, 
              )),
        ),
      ),
    );
  }
}