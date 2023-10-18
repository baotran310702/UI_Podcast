import 'package:flutter/material.dart';
import 'home/home.dart';
import 'podcast_player/podcast_player.dart';

void main() {
  runApp(const PodCastApp());
}

class PodCastApp extends StatelessWidget {
  const PodCastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PodCastApp",
      debugShowCheckedModeBanner: false,
      home: const SafeArea(
          child: Scaffold(
        body: PodCastHome(),
      )),
      routes: {
        '/podcastPlayer': (context) => const Scaffold(
              body: PodcastPlayer(),
            ),
        '/home': (context) => const Scaffold(
              body: PodCastHome(),
            )
      },
    );
  }
}
