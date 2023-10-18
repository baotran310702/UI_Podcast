import 'package:firstproject/home/components/best_podcast.dart';
import 'package:firstproject/podcast_player/components/header.dart';
import 'package:firstproject/podcast_player/components/podcast_img.dart';
import 'package:flutter/material.dart';

class PodcastPlayer extends StatelessWidget {
  const PodcastPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF192038),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Header(), PodcastPlayerAction(), BestPodcast(Amount: 3)],
      ),
    );
  }
}
