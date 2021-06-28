import 'package:flutter/material.dart';

class PrototypePage extends StatelessWidget {
  final String image;
  const PrototypePage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fitWidth,
        )
      ],
    );
  }
}
