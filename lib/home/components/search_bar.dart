import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xFF222B45),
      ),
      height: 48.0,
      margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
      child: const Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(right: 12, left: 12),
                child: FaIcon(FontAwesomeIcons.magnifyingGlass,
                    color: Colors.white, size: 16)),
            Expanded(
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white30)),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
