import 'package:flutter/material.dart';

class PrototypePanel extends StatelessWidget {
  final String image;
  const PrototypePanel({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fitWidth,
    );
  }
}
