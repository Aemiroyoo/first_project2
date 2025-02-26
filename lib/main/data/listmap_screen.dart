import 'package:first_project/main/data/list_map.dart';
import 'package:flutter/material.dart';


class ListmapScreen extends StatelessWidget {
  const ListmapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: listNameMap.length, 
        itemBuilder: (BuildContext context, int index) {
          final data = listNameMap[index];
          return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Text(data['name'],style: TextStyle(fontSize: 23 )),
            Text(data['address']),
            Text(data['phone'])
           ],
          );
        },
      ),
    );
  }
}
