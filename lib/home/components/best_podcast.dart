import 'package:firstproject/home/model/podcast.dart';
import 'package:firstproject/podcast_player/podcast_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestPodcast extends StatelessWidget {
  final List<Podcast>? listPodcast;

  const BestPodcast({Key? key, this.listPodcast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List<Widget>.generate(
                    listPodcast!.length,
                    (i) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, PodcastPlayer.route,
                                arguments: {
                                  'currentPodcast': listPodcast![i],
                                  'listPodcast': listPodcast!
                                });
                          },
                          child: RowPodcast(
                            podcast: listPodcast![i],
                          ));
                    },
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class RowPodcast extends StatelessWidget {
  final Podcast? podcast;

  const RowPodcast({super.key, this.podcast});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(podcast!.img),
                        ),
                      ),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.network(
                          podcast!.img,
                          height: 48.0,
                          width: 48.0,
                          errorBuilder: (BuildContext context, Object error,
                              StackTrace? stackTrace) {
                            return Image.asset('lib/assets/default.png');
                          },
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Text(
                            podcast!.dateRelease,
                            style: TextStyle(
                                fontSize: 8,
                                color:
                                    const Color(0xFFFFFFFF).withOpacity(0.8)),
                          ),
                        ),
                        Text(
                          podcast!.length,
                          style: const TextStyle(
                              fontSize: 8, color: Color(0xFFFFFFFF)),
                        ),
                      ]),
                      Text(
                        podcast!.name.length > 20
                            ? "${podcast!.name.substring(0, 20)}..."
                            : podcast!.name,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const FaIcon(
          FontAwesomeIcons.ellipsisVertical,
          color: Colors.white,
          size: 16,
        )
      ],
    );
  }
}
