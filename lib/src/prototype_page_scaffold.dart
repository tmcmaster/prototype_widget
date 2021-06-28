import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PrototypePageScaffold extends StatelessWidget {
  final String banner;
  final List<Widget> panels;
  final String footer;

  const PrototypePageScaffold({
    Key? key,
    required this.banner,
    required this.panels,
    required this.footer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(banner, fit: BoxFit.fitWidth),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(panels),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100,
        child: Image.asset(
          footer,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
