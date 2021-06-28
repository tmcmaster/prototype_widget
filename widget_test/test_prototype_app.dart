import 'package:flutter_workbench/flutter_workbench.dart';
import 'package:prototype_widget/src/prototype_app.dart';
import 'package:prototype_widget/src/prototype_page.dart';
import 'package:prototype_widget/src/prototype_page_scaffold.dart';
import 'package:prototype_widget/src/prototype_panel_overflow.dart';
import 'package:prototype_widget/src/prototype_panel_slider.dart';

void main() {
  FlutterWorkbench.runAppContainer(
    title: 'Prototype App',
    child: PrototypeApp(
      children: [
        PrototypePageScaffold(
          banner: 'assets/screens/home/banner.png',
          panels: [
            PrototypePanel(image: 'assets/screens/home/panels/rated_heading.png'),
            PrototypePanelSlider(height: 350, image: 'assets/screens/home/panels/rated_items.png'),
            PrototypePanel(image: 'assets/screens/home/panels/trending_heading.png'),
            PrototypePanelSlider(height: 350, image: 'assets/screens/home/panels/trending_items.png'),
            PrototypePanel(image: 'assets/screens/home/panels/details_heading.png'),
            PrototypePanelOverflow(height: 150, image: 'assets/screens/home/panels/details_items.png'),
            PrototypePanel(image: 'assets/screens/home/panels/favourite_heading.png'),
            PrototypePanelOverflow(height: 70, image: 'assets/screens/home/panels/favourite_items.png'),
          ],
          footer: 'assets/screens/home/footer.png',
        ),
        PrototypePage(image: 'assets/screens/favourites_screen.png'),
        PrototypePage(image: 'assets/screens/trending_screen.png'),
        PrototypePage(image: 'assets/screens/rated_screen.png'),
      ],
    ),
  );
}
