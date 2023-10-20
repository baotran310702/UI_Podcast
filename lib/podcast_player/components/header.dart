import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
                size: 24,
              )),
          const SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 24),
                    child: FaIcon(
                      FontAwesomeIcons.gear,
                      size: 24,
                      color: Colors.white,
                    )),
                FaIcon(
                  FontAwesomeIcons.ellipsisVertical,
                  size: 24,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
