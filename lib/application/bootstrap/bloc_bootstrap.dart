import 'package:di_app/application/bloc/user_profile/user_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/auth/auth_bloc.dart';

final _getIt = GetIt.instance;

class BlocBootstrap extends StatefulWidget {
  final Widget child;

  const BlocBootstrap({super.key, required this.child});

  @override
  State<BlocBootstrap> createState() => _BlocBootstrapState();
}

class _BlocBootstrapState extends State<BlocBootstrap> {
  late final AuthBloc _authBloc;
  late final UserProfileBloc _userProfileBloc;

  @override
  void initState() {
    _authBloc = AuthBloc();
    _userProfileBloc = UserProfileBloc(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          //create: (_) => _authBloc,
          create: (_) => _getIt.get<AuthBloc>(),
        ),
        BlocProvider(
          //create: (_) => _userProfileBloc,
          create: (_) => _getIt.get<UserProfileBloc>(param1: context),
        ),
      ],
      child: widget.child,
    );
  }
}
