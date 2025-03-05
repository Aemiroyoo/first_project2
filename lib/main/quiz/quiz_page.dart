import 'package:first_project/main/login/login_screen.dart';
import 'package:first_project/main/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int? _selectedYear = 0;
  final List<int> _years = [2000, 2025, 2023, 2024];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 238, 237, 237),
        child: Padding(
          // padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                // leading: const Icon(
                //   Icons.chevron_left,
                //   size: 20,
                //   color: Color.fromARGB(255, 13, 70, 1),
                // ),
                title: Row(
                  children: [
                    const Icon(
                      Icons.chevron_left,
                      size: 18,
                      color: Color.fromARGB(255, 13, 70, 1),
                    ),
                    const Text(
                      'Previous',
                      style: TextStyle(
                        fontFamily: "Baloo2",
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 13, 70, 1),
                      ),
                    ),
                    const SizedBox(width: 94),
                    const Text(
                      '7/10',
                      style: TextStyle(
                        fontFamily: "Baloo2",
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return QuizScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 65),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 340,
                      height: 220,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 50,
                            spreadRadius: -10,
                            offset: const Offset(0, 20),
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 70),
                          Text(
                            "Tahun berapa saat ini?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Baloo2",
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // SizedBox(height: 16),
                        ],
                      ),
                    ),

                    Positioned(
                      top: -40,
                      // left: 130,
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: CircularProgressIndicator(
                                value: 0.50,
                                strokeWidth: 8,
                                backgroundColor: const Color.fromARGB(
                                  255,
                                  143,
                                  196,
                                  190,
                                ),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Colors.teal.shade900,
                                ),
                              ),
                            ),
                            const Text(
                              "30",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 1, 73, 66),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    _years.map((year) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        // padding: const EdgeInsets.symmetric(vertical: 6),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedYear = year;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 12),
                            decoration: BoxDecoration(
                              color:
                                  _selectedYear == year
                                      ? Colors.teal.shade100
                                      : Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: RadioListTile<int>(
                              value: year,
                              groupValue: _selectedYear,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedYear = value;
                                });
                              },
                              title: Text(
                                year.toString(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      _selectedYear == year
                                          ? Colors.teal.shade900
                                          : Colors.black,
                                ),
                              ),
                              activeColor: Colors.teal.shade900,
                              controlAffinity: ListTileControlAffinity.trailing,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              tileColor: Colors.transparent,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
