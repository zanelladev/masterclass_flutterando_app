import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/src/pages/repository/ui/repository_page.dart';

class RepositoryModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (_, __) => const RepositoryPage()),
      ];
}
