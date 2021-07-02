import 'package:flutter/material.dart';

class PrototypePanelSlider extends StatelessWidget {
  final String image;
  final double height;
  const PrototypePanelSlider({
    Key? key,
    required this.image,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(image, fit: BoxFit.fitHeight),
        ],
      ),
    );
  }
}
