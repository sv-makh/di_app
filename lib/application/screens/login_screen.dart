import 'package:di_app/application/di/setup_app_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../bloc/user_profile/user_profile_bloc.dart';
import '../router/router_paths.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login screen")),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Colors.blue,
                )
              ),
              child: TextField(
                decoration: InputDecoration.collapsed(hintText: "login"),
                controller: _controller,
              ),
            ),
            TextButton(
              onPressed: () {
                setupAppDI();

                final userProfileBloc = context.read<UserProfileBloc>();
                userProfileBloc.add(GetUserProfile(_controller.text));

                context.push(RouterPaths.appScreen.dest);
              },
              child: Text("Sign in"),
            ),
          ],
        ),
      ),
    );
  }
}
