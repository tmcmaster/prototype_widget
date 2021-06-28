import 'package:flutter/material.dart';

class PrototypeApp extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  final List<Widget> children;
  PrototypeApp({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: _controller,
      children: children,
    );
  }
}
