
import 'package:fake_store/feature/authentication/domain/params/sign_in_params.dart';

abstract interface class AuthRepository {
  Future<void> signIn(SignInParams signInParams);
  Future<void> signOut();
  Future<bool> isLoggedIn();
}