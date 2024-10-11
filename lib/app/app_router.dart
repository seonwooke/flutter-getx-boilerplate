import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../project_name.dart';

part 'app_router.g.dart';

@TypedGoRoute<BranchRoute>(
  path: '/',
)
class BranchRoute extends GoRouteData {
  const BranchRoute();

  @override
  CustomTransitionPage<void> buildPage(
    BuildContext context,
    GoRouterState state,
  ) =>
      CustomTransitionPage<void>(
        key: state.pageKey,
        child: const BranchView(),
        transitionsBuilder: (context, animation, animation2, child) => child,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      );
}

@TypedGoRoute<SignInRoute>(
  path: '/sign-in',
)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignInView();
}

@TypedGoRoute<HomeRoute>(
  path: '/home',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeView();
}
