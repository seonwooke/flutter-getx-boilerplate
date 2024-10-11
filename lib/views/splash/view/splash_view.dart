import 'package:flutter/material.dart';

import '../../../project_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final appController = AppController.instance;

  var opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      opacity = 1.0;
      setState(() {});
    });

    Future<void>.delayed(const Duration(milliseconds: 3000)).then((_) {
      opacity = 1.0;
      appController.splashCompleted();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  Widget _bodyWidget() {
    return Center(
      child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 100),
        child: const Text(
          'Splash View',
        ),
      ),
    );
  }
}
