import 'package:flutter/material.dart';

class PageFalse extends StatelessWidget {
  const PageFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
