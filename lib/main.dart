import 'package:first_project/main/login/login_screen.dart';
import 'package:first_project/main/quiz/quiz_screen.dart';
import 'package:first_project/main/splash/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  bool isLoggedIn = prefs.getBool('is_logged_in') ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          isLoggedIn
              ? const QuizScreen(
                email: 'example@example.com',
                password: 'password',
              )
              : const IntroScreen(),
    );
  }
}
