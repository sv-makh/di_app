import 'package:di_app/application/bootstrap/bloc_bootstrap.dart';
import 'package:flutter/material.dart';

import 'application/bootstrap/app_bootstrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBootstrap(child: const AppBootstrap());
  }
}

