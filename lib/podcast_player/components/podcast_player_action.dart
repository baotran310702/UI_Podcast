import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstproject/home/data/data.dart';

class PodcastPlayerAction extends StatelessWidget {
  const PodcastPlayerAction({super.key});

  void handleOnchange() {}

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 232.0,
                  width: 248.0,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.white60,
                            offset: Offset(0, 2),
                            blurRadius: 10,
                            spreadRadius: 2),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(Data.listpodcast[0].img),
                          fit: BoxFit.cover)),
                  child: null,
                ),
                const Positioned(
                    top: 10,
                    right: 10,
                    child: FaIcon(
                      FontAwesomeIcons.heart,
                      size: 24,
                      color: Colors.white,
                    )),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 28),
              child: const Text(
                "Sound Worth Saving",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Column(
                children: [
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(FontAwesomeIcons.shuffle,
                            size: 24, color: Colors.white),
                        FaIcon(FontAwesomeIcons.backward,
                            size: 24, color: Colors.white),
                        FaIcon(FontAwesomeIcons.play,
                            size: 36, color: Colors.white),
                        FaIcon(FontAwesomeIcons.forward,
                            size: 24, color: Colors.white),
                        FaIcon(FontAwesomeIcons.arrowRotateLeft,
                            size: 24, color: Colors.white)
                      ]),
                  SliderTheme(
                      data: SliderThemeData(
                          activeTrackColor: const Color(0xFFFF3D71),
                          inactiveTrackColor:
                              const Color(0xFFFFFFFF).withOpacity(0.3),
                          thumbColor: Colors.white),
                      child: Slider(
                          value: 20.0, max: 100, onChanged: (double value) {}))
                ],
              ),
            )
          ],
        ));
  }
}
