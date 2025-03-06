import 'package:first_project/main/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  void _navigateToLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Selamat Datang",
            body: "Aplikasi ini akan membantu aktivitasmu lebih mudah!",
            image: Center(
              child: Image.asset(
                'assets/images/mobil_laris_9-removebg-preview.png',
                fit: BoxFit.cover,
              ),
            ),
            // decoration: const PageDecoration(
            //   imagePadding: EdgeInsets.all(0),
            //   // bodyFlex: 2,
            //   // imageFlex: 3,
            //   fullScreen: true,
            //   boxDecoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(
            //         'assets/images/mobil_laris_9-removebg-preview.png',
            //       ),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
          ),
          PageViewModel(
            title: "Fitur Menarik",
            body: "Kami menyediakan berbagai fitur keren untukmu.",
            image: Center(
              child: Icon(Icons.star, size: 100, color: Colors.orange),
            ),
          ),
          PageViewModel(
            title: "Ayo Mulai!",
            body: "Klik tombol di bawah untuk masuk ke aplikasi.",
            image: Center(
              child: Icon(Icons.arrow_forward, size: 100, color: Colors.green),
            ),
          ),
        ],
        onDone: () => _navigateToLogin(context),
        onSkip: () => _navigateToLogin(context),
        showSkipButton: true,
        skip: const Text("Lewati"),
        next: const Icon(Icons.arrow_forward),
        done: const Text(
          "Mulai",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
