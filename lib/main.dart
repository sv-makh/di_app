import 'package:di_app/application/bootstrap/bloc_bootstrap.dart';
import 'package:di_app/application/di/setup_root_scope.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'application/bootstrap/app_bootstrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setupRootDI();

    return BlocBootstrap(child: const AppBootstrap());
  }
}

