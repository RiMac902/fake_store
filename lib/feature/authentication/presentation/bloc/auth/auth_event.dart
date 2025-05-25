part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = Started;
  const factory AuthEvent.signIn(SignInParams params) = SignIn;
  const factory AuthEvent.signOut() = SignOut;
}