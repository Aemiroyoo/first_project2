// import 'package:first_project/views/latihan3.dart';
import 'package:flutter/material.dart';
import 'profile_screen.dart';

class ImageGridScreen extends StatelessWidget {
  final String email;
  final String password;
  final List<String> imagePaths = [
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
    'assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg',
  ];

  ImageGridScreen({super.key, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Gallery Grid')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('Email: $email', style: TextStyle(fontSize: 18)),
            Text('Password: $password', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) =>
                                    PhotoScreen(imagePath: imagePaths[index]),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          imagePaths[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
