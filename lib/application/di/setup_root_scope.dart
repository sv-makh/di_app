import 'package:di_app/application/bloc/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupRootDI() {
  getIt.registerLazySingleton<AuthBloc>(() => AuthBloc());
}