import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:scaffold_widget/scaffold_widget.dart';

import '../shared/shared_style.dart';

void main() {
  const fruit = ['apple', 'banana', 'cherries'];
  final favourites = fruit.getRange(0, 3).toList();

  FlutterWorkbench.runAppContainer(
    title: 'Scaffold Page',
    styles: SharedStyle.themes,
    child: ScaffoldPage(
      title: 'Fruit App',
      banner: 'assets/images/mixed_fruit.jpg',
      scrollDirection: Axis.vertical,
      navItems: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        )
      ],
      children: [
        ScaffoldHeading(text: 'Top Rated Fruit', actionText: 'See all >'),
        ScaffoldPanelOverflow(children: [
          ScaffoldPanelScrolling(
            childHeight: 100,
            childWidth: 150,
            children: Iterable.generate(10, (i) => Card(child: Center(child: Text('Card ${i + 1}')))).toList(),
          ),
        ]),
        ScaffoldHeading(text: 'Trending Fruit', actionText: 'See all >'),
        ScaffoldPanelOverflow(children: [
          ScaffoldPanelScrolling(
            childHeight: 100,
            childWidth: 150,
            children: Iterable.generate(10, (i) => Card(child: Center(child: Text('Card ${i + 21}')))).toList(),
          ),
        ]),
        ScaffoldHeading(text: 'Fruit Details', actionText: 'See all >'),
        ScaffoldRowOverflow(
            size: 150,
            children: favourites
                .map((f) => ScaffoldTile(label: '$f', image: 'assets/icons/$f.jpg', onPressed: () {}))
                .toList()),
        ScaffoldHeading(text: 'Favourite Fruit', actionText: 'See all >'),
        Container(
          margin: EdgeInsets.fromLTRB(35, 0, 0, 0),
          child: ScaffoldRowOverflow(
              size: 70,
              children: fruit.reversed
                  .map((f) => ScaffoldTile(label: '$f', image: 'assets/icons/$f.jpg', onPressed: () {}))
                  .toList()),
        ),
      ],
    ),
  );
}
