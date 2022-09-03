import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_exemple/src/modules/home/home_module.dart';
import 'package:modular_exemple/src/modules/page/page_false.dart';
import 'package:modular_exemple/src/modules/splash/contoller/splash_controller.dart';
import 'package:modular_exemple/src/modules/splash/view/splash_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashView()),
        ModuleRoute('/home', module: HomeModule()),
        ChildRoute('/page', child: (context, args) => const PageFalse()),
      ];
}
