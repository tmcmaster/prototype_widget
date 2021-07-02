import 'package:flutter/material.dart';

class BlackAndWhite extends StatelessWidget {
  final Image image;

  const BlackAndWhite({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.white,
        BlendMode.saturation,
      ),
      child: image,
    );
  }
}
