// ignore: file_names
import 'package:flutter/material.dart';
import 'data/data.dart';
import 'components/category.dart';
import 'components/header.dart';
import 'components/search_bar.dart';
import 'components/best_podcast.dart';

class PodCastHome extends StatelessWidget {
  static const route = '';
  const PodCastHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF192038),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Header(),
          const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 12,
                ),
                child: Text(
                  "Looking for podcast channels",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ))
          ]),
          const SearchHome(),
          const Category(),
          const TextSeparate(),
          BestPodcast(
            listPodcast: Data.listpodcast,
          )
        ],
      ),
    );
  }
}

class TextSeparate extends StatelessWidget {
  const TextSeparate({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 4, bottom: 12, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Best Podcast Episodes",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
          ),
          Text(
            "View all",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 10),
          )
        ],
      ),
    );
  }
}
