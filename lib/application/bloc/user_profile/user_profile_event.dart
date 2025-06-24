part of "user_profile_bloc.dart";

abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent();
}

class GetUserProfile extends UserProfileEvent {
  final String name;

  const GetUserProfile(this.name);

  @override
  List<Object?> get props => [name];
}

class ResetUserProfile extends UserProfileEvent {
  @override
  List<Object?> get props => [];
}
