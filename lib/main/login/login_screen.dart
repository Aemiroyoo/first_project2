import 'package:first_project/main/main_screen.dart';
import 'package:first_project/main/sign_up/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class AppTextStyles {
  static const TextStyle boldText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle titleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color.fromARGB(255, 0, 38, 87),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 60),
              Column(
                children: [
                  Text(
                    'Hello Welcome Back',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome back please',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 114, 135, 161),
                    ),
                  ),
                  Text(
                    'sign in again',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 114, 135, 161),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 100),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Email Address", style: AppTextStyles.titleStyle),
              ),

              SizedBox(height: 10),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  // labelText: 'Email',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  hintText: 'Enter Email',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 1, 50, 114),
                    ), // Warna default
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 1, 50, 114),
                    ), // Warna saat tidak fokus
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 1, 50, 114),
                      width: 2,
                    ), // Warna saat fokus
                  ),
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 16),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("Password", style: AppTextStyles.titleStyle),
              ),
              SizedBox(height: 10),

              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  // labelText: 'Password',
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ), // Warna hint text
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 1, 50, 114),
                    ), // Warna default
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 1, 50, 114),
                    ), // Warna saat tidak fokus
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 1, 50, 114),
                      width: 2,
                    ), // Warna saat fokus
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ), // Warna ikon
                ),
                obscureText: true,
              ),

              SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  String email = _emailController.text;
                  String password = _passwordController.text;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              MainScreen(email: email, password: password),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 95, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 50, 114),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 55),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: const Color.fromARGB(255, 1, 50, 114),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                    ), // Beri jarak antara divider dan teks
                    child: Text(
                      'Or sign in with',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: const Color.fromARGB(255, 1, 50, 114),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // 11325C
                  backgroundColor: Color.fromARGB(255, 49, 78, 133),
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/facebook.png", height: 16),
                    SizedBox(width: 8),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 17),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 49, 78, 133),
                  padding: EdgeInsets.symmetric(horizontal: 135, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.png", height: 16),
                    SizedBox(width: 8),
                    Text(
                      "Google",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 17),

              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 133, 132, 132),
                    fontSize: 12,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      // text: ' Sign In',
                      text: ' Sign Up',
                      style: TextStyle(
                        color: Color(0xff283FB1),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) =>
                                          SignupScreen(), // Ganti dengan halaman tujuan
                                ),
                              );
                            },
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

  TextField textField(
    String hintext, {
    required TextEditingController controller,
  }) {
    return TextField(
      controller: controller,
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: "Masukkan $hintext",
      ),
    );
  }

  Row titleField(String text) {
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
