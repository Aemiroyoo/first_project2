import 'package:flutter/material.dart';

void main() {
  
  runApp(const MyApp());
  
}

//isi biodata
String nama = "Sutiyo Yulianto";
int usia = 24;
var alamat = "Jl. Sinyar VII, RT 005, RW 009, No.12";
var kontak = "+62 89651815986";
var email = "sutiyoyulianto200@gmail.com";
var agama = "Islam";


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(
        // This is the theme of your application.
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 69, 117, 6)), 
      ),
      home: const MyHomePage(title: 'Lakuna'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 270,
                  width: 270,
                  decoration: BoxDecoration(
                    // color: const Color.fromARGB(255, 36, 126, 199),
                    borderRadius: BorderRadius.circular(99),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/f/f1/Bacharuddin_Jusuf_Habibie_official_portrait.jpg"),
                      fit: BoxFit.cover, // Menyesuaikan gambar agar mengisi seluruh container
                    ),
                    border: Border.all(
                      color: const Color.fromARGB(255, 206, 205, 145), 
                      width: 5, 
                    ),
                  ),
                  // child: const Icon(
                  //   Icons.person, 
                  //   size: 100, 
                  //   color: Colors.white, 
                  // ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'Biodata Diri',
                  style: TextStyle(
                    fontSize: 28, 
                    fontWeight: FontWeight.bold, 
                  ),
                ),
              ),

              SizedBox(height: 16), 
              textConstant(title: 'Nama: ', value: nama),
              SizedBox(height: 11),
              textConstant(title: 'Alamat: ', value: alamat),
              SizedBox(height: 11),
              textConstant(title: 'Kontak: ', value: kontak),
              SizedBox(height: 11),
              textConstant(title:  'Email: ', value: email),
              SizedBox(height: 11),
              textConstant(title: 'Agama: ', value: agama),
              
              SizedBox(height: 11),
              Container(
                height: 360,
                width: 360,
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 36, 126, 199),
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: const Color.fromARGB(255, 206, 205, 145),
                    width: 5,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Bacharuddin_Jusuf_Habibie_official_portrait.jpg"),
                    fit: BoxFit.cover, 
                  ),
                ),
              )


            ],
          ),
        ),
      ),
      
    );

  }

  Widget textConstant({required String title, required String value}) {
  return RichText(
    text: TextSpan(
      text: title, 
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      children: [
        TextSpan(
          
          text: value, 
          style: const TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
  
  
}
