import 'package:flutter/material.dart';
import 'profile_screen.dart'; 

class ImageGridScreen extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Gallery Grid')),
      body: Padding(
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
                    builder: (context) => PhotoScreen(imagePath: imagePaths[index]),
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
    );
  }
}
