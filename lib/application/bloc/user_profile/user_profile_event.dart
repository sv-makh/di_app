part of "user_profile_bloc.dart";

abstract class UserProfileEvent extends Equatable {
  const UserProfileEvent();
}

class GetUserProfile extends UserProfileEvent {
  @override
  List<Object?> get props => [];
}
class ResetUserProfile extends UserProfileEvent {
  @override
  List<Object?> get props => [];
}
