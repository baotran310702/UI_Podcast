import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home/home.dart';
import 'podcast_player/podcast_player.dart';

void main() {
  runApp(const PodCastApp());
}

class PodCastApp extends StatelessWidget {
  const PodCastApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Controller to handle PageView and also handles initial page
    final _pageController = PageController(initialPage: 0);

    /// Controller to handle bottom nav bar and also handles initial page
    final _controller = NotchBottomBarController(index: 0);

    final List<Widget> bottomBarPages = [
      const PodCastHome(),
      const PodCastHome(),
      const PodCastHome(),
      const PodCastHome(),
      const PodCastHome(),
    ];

    return MaterialApp(
      title: "PodCastApp",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        bottomNavigationBar: AnimatedNotchBottomBar(
          notchBottomBarController: _controller,
          showShadow: false,
          durationInMilliSeconds: 300,
          color: const Color(0xFF222B45),
          showLabel: true,
          notchColor: const Color(0xFFE22F67),
          bottomBarWidth: MediaQuery.of(context).size.width,
          removeMargins: false,
          bottomBarItems: const [
            BottomBarItem(
                inActiveItem: Center(
                    child: FaIcon(
                  FontAwesomeIcons.house,
                  size: 16,
                  color: Colors.white38,
                )),
                activeItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.house,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                itemLabel: "Home"),
            BottomBarItem(
                inActiveItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.fire,
                    size: 16,
                    color: Colors.white38,
                  ),
                ),
                activeItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.fire,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                itemLabel: "Trending"),
            BottomBarItem(
                inActiveItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.compass,
                    size: 16,
                    color: Colors.white38,
                  ),
                ),
                activeItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.compass,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                itemLabel: "Explore"),
            BottomBarItem(
                inActiveItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.message,
                    size: 16,
                    color: Colors.white38,
                  ),
                ),
                activeItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.message,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                itemLabel: "Chat"),
            BottomBarItem(
                inActiveItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.user,
                    size: 16,
                    color: Colors.white38,
                  ),
                ),
                activeItem: Center(
                  child: FaIcon(
                    FontAwesomeIcons.user,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
                itemLabel: "Profile"),
          ],
          onTap: (int index) {
            _pageController.jumpToPage(index);
          },
        ),
        extendBody: true,
      )),
      routes: {
        PodcastPlayer.route: (context) {
          final Map arguments =
              ModalRoute.of(context)!.settings.arguments as Map;
          return Scaffold(
            body: PodcastPlayer(
              arguments: arguments,
            ),
          );
        },
        PodCastHome.route: (context) => const Scaffold(
              body: PodCastHome(),
            )
      },
    );
  }
}
