import 'package:first_project/main/login/login_screen.dart';
import 'package:first_project/main/quiz/quiz_page.dart';
// import 'package:first_project/main/sign_up/signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final String email;
  final String password;
  const QuizScreen({Key? key, required this.email, required this.password})
    : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class AppTextStyles {
  static const TextStyle boldText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: 'Baloo2',
  );
  static const TextStyle titleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Baloo2',
  );
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // Hapus semua data saat logout

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 70, 67, 0.7),
            image: const DecorationImage(
              image: AssetImage("assets/images/Login_Screen.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Quiz_Khelo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter Your Name",
                        style: AppTextStyles.titleStyle,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        hintText: 'Lakuna',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 160),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 93,
                        vertical: 13,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(248, 198, 96, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            text: 'Start',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => QuizPage(),
                                      ),
                                    );
                                  },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
