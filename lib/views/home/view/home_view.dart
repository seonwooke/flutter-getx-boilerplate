import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  PreferredSizeWidget _appBarWidget() {
    return AppBar();
  }

  Widget _bodyWidget() {
    return const Center(
      child: Text('Home View'),
    );
  }
}
