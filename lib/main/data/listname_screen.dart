import 'package:flutter/material.dart';
import 'list_name.dart'; 

class ListNameScreen extends StatelessWidget {
  const ListNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: listName.length, 
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")), 
            title: Text(listName[index]), 
          );
        },
      ),
    );
  }
}
