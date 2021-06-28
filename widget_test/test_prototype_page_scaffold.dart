import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:prototype_widget/src/prototype_page_scaffold.dart';

void main() {
  final Widget e;
  FlutterWorkbench.runAppContainer(
    title: 'Placeholder Page',
    child: PrototypePageScaffold(
      banner: 'assets/screens/home/banner.png',
      panels: [
        PrototypePanel(image: 'assets/screens/home/rated_screen.png'),
        PrototypePanel(image: 'assets/screens/home/trending.png'),
        PrototypePanel(image: 'assets/screens/home/details.png'),
        PrototypePanel(image: 'assets/screens/home/favourite.png'),
      ],
      footer: 'assets/screens/home/footer.png',
    ),
  );
}
