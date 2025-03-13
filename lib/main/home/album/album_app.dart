import 'package:first_project/api/album/fect_album/fect.dart';
import 'package:first_project/api/album/model/album.dart';
import 'package:first_project/utils/constant/app.color.dart';
import 'package:flutter/material.dart';

class AlbumAppScreen extends StatefulWidget {
  const AlbumAppScreen({super.key});

  @override
  State<AlbumAppScreen> createState() => _AlbumAppScreenState();
}

class _AlbumAppScreenState extends State<AlbumAppScreen> {
  late Future<AlbumResponse> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
        backgroundColor: AppColor.secondaryColor,
      ),
      body: FutureBuilder<AlbumResponse>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              snapshot.data?.title ?? "",
              style: TextStyle(fontSize: 40),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
