import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../project_name.dart';

class App extends StatelessWidget {
  App({super.key});

  final appController = Get.put(AppController());

  final router = GoRouter(
    routes: $appRoutes,
    observers: [AppRouterObserver()],
    navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'rootNav'),
  );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      /// App
      theme: theme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,

      /// Router
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      backButtonDispatcher: router.backButtonDispatcher,

      /// Localization
      translations: LocalizationUtil(),
      locale: LocalizationUtil.defaultLocale,
      fallbackLocale: LocalizationUtil.defaultLocale,

      /// Builder
      builder: (context, child) {
        return Obx(() {
          return appController.splashLoaded.value &&
                  appController.authLoaded.value
              ? child ?? const SizedBox()
              : const SplashView();
        });
      },
    );
  }
}
