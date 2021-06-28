import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrototypePanelOverflow extends StatelessWidget {
  final double height;
  final String image;

  const PrototypePanelOverflow({
    Key? key,
    required this.height,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(image, height: height),
            ),
          ],
        ),
      ),
    );
  }
}
