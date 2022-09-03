import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_exemple/src/modules/home/controller/home_controller.dart';
import 'package:modular_exemple/src/modules/home/view/home_view.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => HomeController(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomeView()),
      ];
}
