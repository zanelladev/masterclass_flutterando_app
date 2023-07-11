import 'package:flutter_modular/flutter_modular.dart';
import 'package:masterclass_app/src/pages/home/home_module.dart';
import 'package:masterclass_app/src/pages/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: SplashModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/splash', module: SplashModule()),
      ];
}
