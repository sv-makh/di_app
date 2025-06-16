import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App screen")),
      body: Center(
        child: Column(
          children: [
            Text(""),
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
