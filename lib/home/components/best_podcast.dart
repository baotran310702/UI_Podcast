import 'package:firstproject/home/data/data.dart';
import 'package:firstproject/podcast_player/podcast_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestPodcast extends StatelessWidget {
  final int? Amount;

  const BestPodcast({Key? key, this.Amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Best Podcast Episodes",
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
            for (int i = 0; i < Amount!; i++)
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/podcastPlayer');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Column(children: [
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                Data.listpodcast[i].img))),
                                    child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Image.network(
                                          Data.listpodcast[i].img,
                                          height: 48.0,
                                          width: 48.0,
                                        )))),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(right: 16.0),
                                      child: Text(
                                        Data.listpodcast[i].dateRelease,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: const Color(0xFFFFFFFF)
                                                .withOpacity(0.8)),
                                      )),
                                  Text(
                                    Data.listpodcast[i].length,
                                    style: const TextStyle(
                                        fontSize: 8, color: Color(0xFFFFFFFF)),
                                  ),
                                ]),
                                Text(
                                    Data.listpodcast[i].name.length > 20
                                        ? "${Data.listpodcast[i].name.substring(0, 20)}..."
                                        : Data.listpodcast[i].name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.w600))
                              ],
                            ),
                          ],
                        ),
                      ]),
                    ),
                    const FaIcon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: Colors.white,
                      size: 16,
                    )
                  ],
                ),
              )
          ]),
    );
  }
}
