import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/src/pages/about/ui/about_page.dart';

class AboutModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (_, __) => const AboutPage(),
        ),
      ];
}
