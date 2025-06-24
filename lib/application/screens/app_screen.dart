import 'package:di_app/application/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../bloc/user_profile/user_profile_bloc.dart';

class AppScreen extends StatelessWidget {
  AppScreen({super.key});

  final _getIt = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    final userProfileBloc = context.read<UserProfileBloc>();

    return Scaffold(
      appBar: AppBar(title: Text("App screen")),
      body: Center(
        child: Column(
          children: [
            Text(""),
            TextButton(
              onPressed: () {
                _getIt.popScope();

                //context.read<UserProfileBloc>().add(ResetUserProfile());
                context.read<AuthBloc>().add(Logout());
                context.pop();
              },
              child: Text("Logout"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text("userName: ${userProfileBloc.state.userName}"),
            ),
          ],
        ),
      ),
    );
  }
}
