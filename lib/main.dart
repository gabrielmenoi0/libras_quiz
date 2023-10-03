import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:libras_quiz/firebase_options.dart';
import 'package:libras_quiz/view/app/quiz_app.dart';
import 'package:libras_quiz/view/splash/splash_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const QuizApp());
}
