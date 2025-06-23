import 'package:di_app/application/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/user_profile/user_profile_bloc.dart';

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
                context.read<UserProfileBloc>().add(ResetUserProfile());
                context.read<AuthBloc>().add(Logout());
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
