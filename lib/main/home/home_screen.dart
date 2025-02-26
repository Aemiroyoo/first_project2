import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        color: const Color.fromARGB(255, 41, 4, 54),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 300,
                width: 380,
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 36, 126, 199),
                  borderRadius: BorderRadius.circular(99),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/mobil_laris_9-removebg-preview.png"),
                    fit: BoxFit.cover, 
                  ),
                ),
              ),
            ),
            SizedBox(height: 1),
            Align(
            alignment: Alignment.centerLeft, 
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    'Sport',
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white
                    ),
                  ),
                  Text(
                    'Lotus Elise 2010',
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //  crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    height: 160,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 41, 4, 54),
                      borderRadius: BorderRadius.circular(20),
                      
                      border: Border.all(
                        color: const Color.fromARGB(255, 248, 246, 95), 
                        width: 2, 
                      ),
                    ),
                    child: const Icon(
                      Icons.speed, 
                      size: 60, 
                      color: Colors.white, 
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Center(
                  child: Container(
                    height: 160,
                    width: 110,
                    decoration: BoxDecoration(
                      // color: const Color.fromARGB(255, 28, 3, 37),
                      color: const Color.fromARGB(255, 41, 4, 54),
                      borderRadius: BorderRadius.circular(20),
                      
                      border: Border.all(
                        color: const Color.fromARGB(255, 248, 246, 95), 
                        width: 2, 
                      ),
                    ),
                    child: const Icon(
                      Icons.people, 
                      size: 60, 
                      color: Colors.white, 
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Center(
                  child: Container(
                    height: 160,
                    width: 110,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 41, 4, 54),
                      borderRadius: BorderRadius.circular(20),
                      
                      border: Border.all(
                        color: const Color.fromARGB(255, 248, 246, 95), 
                        width: 2, 
                      ),
                    ),
                    child: const Icon(
                      Icons.backpack, 
                      size: 60, 
                      color: Colors.white, 
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Align(
            alignment: Alignment.centerLeft, 
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    'Select Location',
                    style: TextStyle(
                      fontSize: 26, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: MediaQuery.of(context).size.width ,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12), 
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                      
                    ),
                    
                    
                    
                  )
                ],
              ),
            ),

            
            SizedBox(height: 11),
            // Container(
            //   height: 360,
            //   width: 360,
            //   decoration: BoxDecoration(
            //     // color: const Color.fromARGB(255, 36, 126, 199),
            //     borderRadius: BorderRadius.circular(100),
            //     border: Border.all(
            //       color: const Color.fromARGB(255, 206, 205, 145),
            //       width: 5,
            //     ),
            //     image: const DecorationImage(
            //       image: AssetImage("assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg"),
            //       fit: BoxFit.cover, 
            //     ),
            //   ),
            // )


          ],
        ),
      ),
      )
    );
  }
}
