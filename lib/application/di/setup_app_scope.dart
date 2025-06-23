import 'package:di_app/application/bloc/user_profile/user_profile_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupAppDI() {
  getIt.pushNewScope();

  getIt.registerFactoryParam<UserProfileBloc,BuildContext,void>((context, _) => UserProfileBloc(context));

  //getIt.registerFactory<UserProfileBloc>(() => UserProfileBloc());
}