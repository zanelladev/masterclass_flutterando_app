import 'package:masterclass_app/src/pages/home/ui/exercises_page.dart';
import 'package:masterclass_app/src/pages/home/ui/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, __) => HomePage()),
        ChildRoute('/exercises',
            child: (_, args) => ExercisesPage(id: args.data)),
      ];
}
