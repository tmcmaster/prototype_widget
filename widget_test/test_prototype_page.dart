import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:prototype_widget/src/prototype_page.dart';

void main() {
  final Widget e;
  FlutterWorkbench.runAppContainer(
    title: 'Placeholder Page',
    child: PrototypePage(
      image: 'assets/screens/home_screen.png',
    ),
  );
}
