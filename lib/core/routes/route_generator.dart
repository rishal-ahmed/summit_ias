import 'package:flutter/material.dart';
import 'package:summit_ias/core/routes/routes.dart';
import 'package:summit_ias/presentation/screens/intro/screen_intro.dart';
import 'package:summit_ias/presentation/screens/main/screen_main.dart';
import 'package:summit_ias/presentation/screens/splash/screen_splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    // final Object? args = routeSettings.arguments;

    switch (routeSettings.name) {
      //==================== Root ====================
      case routeRoot:
        return MaterialPageRoute(builder: (_) => const ScreenSplash());

      //==================== Intro ====================
      case routeIntro:
        return MaterialPageRoute(builder: (_) => const ScreenIntro());

      //==================== Main ====================
      case routeMain:
        return MaterialPageRoute(builder: (_) => const ScreenMain());

      default:
        return _errorRoute();
    }
  }

  //========== Error Page if Navigation goes wrong ==========
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text(
            'Error',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
