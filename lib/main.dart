import 'package:flutter/material.dart';
import 'home/home.dart';

void main() {
  runApp(const PodCastApp());
}

class PodCastApp extends StatelessWidget {
  const PodCastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "PodCastApp",
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: PodCastHome(),
      )),
    );
  }
}
