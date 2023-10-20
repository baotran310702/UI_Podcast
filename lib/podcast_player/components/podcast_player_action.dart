import 'dart:ui';

import 'package:firstproject/home/model/podcast.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PodcastPlayerAction extends StatefulWidget {
  final Podcast? currentPodcast;

  const PodcastPlayerAction({Key? key, this.currentPodcast}) : super(key: key);

  @override
  _PodcastPlayerActionState createState() => _PodcastPlayerActionState();
}

class _PodcastPlayerActionState extends State<PodcastPlayerAction> {
  double sliderValue = 20.0;

  // Initial value for the Slider
  void handleOnchange(double value) {
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
            ImagesCover(img: widget.currentPodcast!.img),
            Container(
              padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
              alignment: Alignment.center,
              child: Text(
                widget.currentPodcast!.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            ActionBox(
              length: widget.currentPodcast!.length,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Favourite Podcast Episodes",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Timer extends StatelessWidget {
  const Timer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "01:23",
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
          Text(
            "2:34",
            style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontWeight: FontWeight.w500,
                fontSize: 12),
          )
        ],
      ),
    );
  }
}

class ImagesCover extends StatelessWidget {
  final String? img;

  const ImagesCover({super.key, this.img});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 250,
          width: 248.0,
          child: null,
        ),
        Positioned(
          right: 12,
          left: 12,
          bottom: 0,
          child: SizedBox(
            width: 100,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Image.network(img!,
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Image.asset('lib/assets/default.png');
                },
              ),
              
            ),
          ),
        ),
        Positioned(
          child: Container(
            alignment: Alignment.center,
            height: 232.0,
            width: 248.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(img!), fit: BoxFit.cover)),
            child: null,
          ),
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: FaIcon(
            FontAwesomeIcons.heart,
            size: 24,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class ActionBox extends StatefulWidget {
  final String? length;

  ActionBox({super.key, this.length});

  @override
  _ActionBoxState createState() => _ActionBoxState();
}

class _ActionBoxState extends State<ActionBox> {
  double sliderValue = 20.0;

  // Initial value for the Slider
  void handleOnchange(double value) {
    setState(() {
      sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 24, bottom: 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(FontAwesomeIcons.shuffle,
                      size: 24, color: Colors.white),
                  FaIcon(FontAwesomeIcons.backward,
                      size: 24, color: Colors.white),
                  FaIcon(FontAwesomeIcons.play, size: 36, color: Colors.white),
                  FaIcon(FontAwesomeIcons.forward,
                      size: 24, color: Colors.white),
                  FaIcon(FontAwesomeIcons.arrowRotateLeft,
                      size: 24, color: Colors.white)
                ]),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: const Color(0xFFFF3D71),
                    inactiveTrackColor:
                        const Color(0xFFFFFFFF).withOpacity(0.3),
                    thumbColor: Colors.white),
                child: SizedBox(
                  height: 24,
                  width: MediaQuery.of(context).size.width,
                  child: Slider(
                    value: sliderValue,
                    max: 100,
                    divisions: 5,
                    onChanged: (double value) {
                      handleOnchange(value);
                    },
                  ),
                ),
              ),
              const Timer()
            ],
          ),
        ],
      ),
    );
  }
}
