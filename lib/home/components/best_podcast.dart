import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestPodcast extends StatelessWidget {
  const BestPodcast({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: const Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Best Podcast Episodes",
              style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 14),
            ),
            Text(
              "View all",
              style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 10),
            ),
          ],
        ),
        Row(
          children: [Text("This is second rows")],
        )
      ]),
    );
  }
}
