import "dart:io";

import "package:bloc/bloc.dart";
import "package:equatable/equatable.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

part "user_profile_event.dart";

part "user_profile_state.dart";

typedef _Emit = Emitter<UserProfileState>;

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final BuildContext context;

  UserProfileBloc(this.context) : super(const UserProfileState()) {
    on<GetUserProfile>(_getProfileHandler);
    on<ResetUserProfile>(_resetState);
  }

  Future<void> _getProfileHandler(GetUserProfile event, _Emit emit) async {
    emit(UserProfileState(userName: "some name"));
  }

  Future<void> _resetState(ResetUserProfile event, _Emit emit) async {
    emit(const UserProfileState());
  }
}
