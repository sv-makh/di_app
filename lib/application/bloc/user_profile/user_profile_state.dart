part of "user_profile_bloc.dart";

class UserProfileState extends Equatable {
  final String? userName;

  const UserProfileState({
    this.userName = "no name",
  });

  UserProfileState copyWith({
    String? userName,
  }) {
    return UserProfileState(
      userName: userName ?? this.userName,
    );
  }

  @override
  List<Object?> get props => [
    userName,
  ];
}
