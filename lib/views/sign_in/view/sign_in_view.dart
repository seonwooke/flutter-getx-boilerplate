import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

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
      child: Text('Sign In View'),
    );
  }
}
