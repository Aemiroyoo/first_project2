import 'package:flutter/material.dart';
// import 'package:first_project/main/data/name_model.dart';
import 'package:first_project/main/data/model_name.dart'; 

class SchoolListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: listNameModelData.length,
        itemBuilder: (context, index) {
          final school = listNameModelData[index]; 
          return ListTile(
            title: Text(school.nameSchool), 
            subtitle: Text(school.address), 
            trailing: Text(school.phone), 
          );
        },
      ),
    );
  }
}
