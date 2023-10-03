import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:libras_quiz/utils/app_colors.dart';
import 'package:libras_quiz/view/home/home_view.dart';
import 'package:libras_quiz/view/splash/splash_view.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Libras Quiz',
      navigatorObservers: [observer],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primaryColor,
            iconTheme: IconThemeData(color: Colors.white)),
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}
