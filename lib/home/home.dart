// ignore: file_names
import 'package:flutter/material.dart';
import 'components/category.dart';
import 'components/header.dart';
import 'components/search_bar.dart';
import 'components/best_podcast.dart';

class PodCastHome extends StatelessWidget {
  const PodCastHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF192038),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Header(),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
          SearchHome(),
          Category(),
          BestPodcast(
            Amount: 5,
          )
        ],
      ),
    );
  }
}
