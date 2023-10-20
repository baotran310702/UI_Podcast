import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding:
            const EdgeInsets.only(bottom: 12, left: 16, right: 16, top: 12),
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text(
                              "Categories",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )),
                        FaIcon(
                          FontAwesomeIcons.arrowDown,
                          size: 12,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Text(
                      "View all",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )
                  ],
                )),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: const Color(0xFF192038),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color(0xFFF12711), Color(0xFFF5AF19)])),
                      height: 100.0,
                      width: 88.0,
                      child: const Center(
                          child: Text(
                        "Education",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                    ),
                  ),
                  Card(
                    color: const Color(0xFF192038),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color(0xFF623DEF), Color(0xFF340FD1)])),
                      height: 100.0,
                      width: 88.0,
                      child: const Center(
                          child: Text(
                        "Society",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                    ),
                  ),
                  Card(
                    color: const Color(0xFF192038),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color(0xFF43EF1D), Color(0xFF0D80F2)])),
                      height: 100.0,
                      width: 88.0,
                      child: const Center(
                          child: Text(
                        "Sport",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                    ),
                  ),
                  Card(
                    color: const Color(0xFF192038),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                              colors: [Color(0xFFE9228D), Color(0xFFF12711)])),
                      height: 100.0,
                      width: 88.0,
                      child: const Center(
                          child: Text(
                        "Films",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
