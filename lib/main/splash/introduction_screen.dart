import 'package:first_project/main/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  void _navigateToLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /// 🔹 Background Image
          Image.asset(
            'assets/images/1080x2280-Background-HD-3.jpg',
            fit: BoxFit.cover, // Agar gambar memenuhi layar
          ),

          /// 🔹 Overlay Transparan untuk Efek Gelap
          Container(
            color: Colors.black.withOpacity(0.5), // Efek semi-transparan gelap
          ),

          /// 🔹 Introduction Screen dengan halaman transparan
          IntroductionScreen(
            globalBackgroundColor: Colors.transparent, // Pastikan transparan
            pages: [
              _buildPage(
                title: "Selamat Datang",
                body: "Aplikasi ini akan membantu aktivitasmu lebih mudah!",
                imagePath: 'assets/images/pngtree-cartoon-welcome-preview.png',
              ),
              _buildPage(
                title: "Fitur Menarik",
                body: "Kami menyediakan berbagai fitur keren untukmu.",
                // icon: Icons.star,
                // iconColor: Colors.orange,
                imagePath1: 'assets/images/istockphoto.png',
              ),
              _buildPage(
                title: "Ayo Mulai!",
                body: "Klik tombol di bawah untuk masuk ke aplikasi.",
                icon: Icons.arrow_forward,
                // iconColor: Colors.green,
              ),
            ],
            onDone: () => _navigateToLogin(context),
            onSkip: () => _navigateToLogin(context),
            dotsDecorator: const DotsDecorator(
              activeColor: Color.fromARGB(221, 255, 255, 255),
              activeSize: Size(14, 14),
            ),
            showSkipButton: true,
            // 🔹 Custom Button untuk Skip, Next, dan Done
            skip: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.transparent, // Latar belakang transparan
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ), // Border putih
                borderRadius: BorderRadius.circular(
                  10,
                ), // Border dengan sudut melengkung
              ),
              child: const Text(
                "Lewati",
                style: TextStyle(
                  color: Colors.white, // Warna teks
                  fontSize: 16,
                ),
              ),
            ),
            next: Container(
              padding: const EdgeInsets.only(
                left: 27,
                right: 27,
                top: 10,
                bottom: 10,
              ), // Padding agar icon tidak terlalu kecil
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ), // Border putih
                borderRadius: BorderRadius.circular(10), // Membuat border bulat
                shape: BoxShape.rectangle, // Membuat border bulat
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white, // Warna panah menjadi putih
              ),
            ),
            done: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ), // Border putih
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Mulai",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 🔹 Fungsi untuk Membuat Halaman dengan Efek Transparan
  PageViewModel _buildPage({
    required String title,
    required String body,
    String? imagePath,
    String? imagePath1,
    IconData? icon,
    Color? iconColor,
  }) {
    return PageViewModel(
      titleWidget: Container(
        padding: const EdgeInsets.all(10),
        // decoration: BoxDecoration(
        //   color: Colors.black.withOpacity(
        //     0.6,
        //   ), // Efek semi-transparan untuk teks
        //   borderRadius: BorderRadius.circular(15),
        // ),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
      bodyWidget: Container(
        padding: const EdgeInsets.all(10),
        // decoration: BoxDecoration(
        //   color: Colors.black.withOpacity(
        //     0.6,
        //   ), // Efek semi-transparan untuk teks
        //   borderRadius: BorderRadius.circular(15),
        // ),
        child: Text(
          body,
          style: const TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      image: Center(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Agar gambar tidak memenuhi seluruh layar
          children: [
            if (imagePath != null) // Jika `imagePath` ada, tampilkan
              SizedBox(
                width: 310, // Sesuaikan lebar gambar pertama
                height: 310, // Sesuaikan tinggi gambar pertama
                child: Image.asset(
                  imagePath,
                  fit:
                      BoxFit
                          .contain, // Menyesuaikan agar gambar tidak terpotong
                ),
              ),

            if (imagePath1 != null) // Jika `imagePath1` ada, tampilkan
              SizedBox(
                width: 250, // Sesuaikan lebar gambar kedua
                height: 250, // Sesuaikan tinggi gambar kedua
                child: Image.asset(
                  imagePath1,
                  fit:
                      BoxFit
                          .contain, // Menyesuaikan agar gambar tidak terpotong
                ),
              ),

            if (imagePath == null &&
                imagePath1 == null) // Jika tidak ada gambar, tampilkan ikon
              Icon(icon, size: 100, color: iconColor),
          ],
        ),
      ),
    );
  }
}
