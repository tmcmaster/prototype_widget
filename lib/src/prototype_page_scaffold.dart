import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:prototype_widget/src/black_and_white.dart';

class PrototypePageScaffold extends StatelessWidget {
  final String? banner;
  final List<Widget> panels;
  final String footer;

  const PrototypePageScaffold({
    Key? key,
    this.banner,
    required this.panels,
    required this.footer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          if (banner != null)
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 150.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(banner!, fit: BoxFit.fitWidth),
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
        child: BlackAndWhite(
          image: Image.asset(
            footer,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
