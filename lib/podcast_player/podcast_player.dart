import 'package:firstproject/home/components/best_podcast.dart';
import 'package:firstproject/home/model/podcast.dart';
import 'package:firstproject/podcast_player/components/header.dart';
import 'package:firstproject/podcast_player/components/podcast_player_action.dart';
import 'package:flutter/material.dart';

class PodcastPlayer extends StatelessWidget {
  static const route = '/podcastPlayer';

  final Map? arguments;

  const PodcastPlayer({super.key, this.arguments});

  @override
  Widget build(BuildContext context) {
    print("Testing arguments");
    print(arguments!['listPodcast']);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: const Color.fromRGBO(25, 32, 56, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Header(),
          PodcastPlayerAction(
            currentPodcast: arguments!['currentPodcast'] as Podcast,
          ),
          BestPodcast(
            listPodcast: arguments!['listPodcast'] as List<Podcast>,
          )
        ],
      ),
    );
  }
}
