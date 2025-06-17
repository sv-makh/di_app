import "dart:async";

import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";

part "auth_event.dart";
part "auth_state.dart";

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({AuthState? authState})
      : super(
          authState ??
              AuthState(
                isAuthenticated: _initAuthStateValue(),
                isLoading: false,
              ),
        ) {
    on<Logout>(_logout);
  }

  static bool _initAuthStateValue() {
    return false;
  }

  Future<void> _logout(Logout event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        isAuthenticated: false,
      ),
    );
  }

}
