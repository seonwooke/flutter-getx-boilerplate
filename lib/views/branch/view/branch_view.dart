import 'package:flutter/material.dart';

import '../../../project_name.dart';

class BranchView extends StatefulWidget {
  const BranchView({super.key});

  @override
  State<BranchView> createState() => _BranchViewState();
}

class _BranchViewState extends State<BranchView> {
  final appController = AppController.instance;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        if (appController.userModel.value.isEmpty) {
          const SignInRoute().go(context);
        } else {
          const HomeRoute().go(context);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(),
    );
  }

  Widget _bodyWidget() {
    return const SizedBox();
  }
}
