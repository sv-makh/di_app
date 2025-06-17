part of "auth_bloc.dart";

class AuthState extends Equatable {
  final String? phoneNumber;
  final String? password;
  final bool isAuthenticated;
  final bool isLoading;

  const AuthState({
    this.phoneNumber,
    this.password,
    required this.isLoading,
    required this.isAuthenticated,
  });

  @override
  List<Object?> get props => [
        phoneNumber,
        password,
        isAuthenticated,
        isLoading,
      ];

  AuthState copyWith({
    String? phoneNumber,
    String? password,
    bool? isAuthenticated,
    bool? isLoading,
  }) {
    return AuthState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
