import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_exemple/src/modules/splash/contoller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var controller = Modular.get<SplashController>();

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (!controller.isLogged()) {
          Modular.to.pushReplacementNamed('/home');
        } else {
          Modular.to.pushReplacementNamed('/page');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: const Center(
        child: Text(
          'Hello Word',
          style: TextStyle(
              color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
