import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  final String imagePath;

  const PhotoScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Image'),
      ),
      body: Center(
        child: Hero(
          tag: imagePath, // Animasi transisi
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
