import 'package:di_app/application/router/router_paths.dart';
import 'package:di_app/application/screens/app_screen.dart';
import 'package:di_app/application/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = ShellRoute(
  builder: (context, state, child) => Scaffold(
    extendBody: true,
    backgroundColor: Colors.blue,
    body: child,
  ),
  routes: [
    GoRoute(
      name: RouterPaths.loginScreen.name,
      path: RouterPaths.loginScreen.path,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      name: RouterPaths.appScreen.name,
      path: RouterPaths.appScreen.path,
      builder: (context, state) => AppScreen(),
    ),
  ],
);

String getInitLocation(BuildContext context) {
  return RouterPaths.loginScreen.path;
}

GoRouter createRouter(BuildContext context) {
  final initLocation = getInitLocation(context);

  return GoRouter(initialLocation: initLocation, routes: [
    appRouter,
  ]);
}
