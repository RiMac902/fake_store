
import 'package:fake_store/feature/authentication/data/datasources/auth_datasource.dart';
import 'package:fake_store/feature/authentication/domain/params/sign_in_params.dart';
import 'package:fake_store/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<void> signIn(SignInParams signInParams) async {
    return await _authDataSource.signIn(signInParams);
  }
  
  @override
  Future<void> signOut() async {
    return await _authDataSource.signOut();
  }
  
  @override
  Future<bool> isLoggedIn() async {
    return await _authDataSource.isLoggedIn();
  }
}