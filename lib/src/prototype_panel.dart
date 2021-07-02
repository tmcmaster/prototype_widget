import 'package:flutter/material.dart';
import 'package:prototype_widget/src/black_and_white.dart';

class PrototypePanel extends StatelessWidget {
  final String image;
  const PrototypePanel({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlackAndWhite(
      image: Image.asset(
        image,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
