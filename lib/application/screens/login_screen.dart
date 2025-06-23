import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../bloc/user_profile/user_profile_bloc.dart';
import '../router/router_paths.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              ),
            ),
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
                decoration: InputDecoration.collapsed(hintText: "password"),
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<UserProfileBloc>().add(GetUserProfile());
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
