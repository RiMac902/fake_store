import 'package:fake_store/core/network/dio_client.dart';
import 'package:fake_store/feature/authentication/domain/params/sign_in_params.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract interface class AuthDataSource {
  Future<void> signIn(SignInParams signInParams);
  Future<void> signOut();
  Future<bool> isLoggedIn();
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final DioClient _dioClient;
  final FlutterSecureStorage _storage;
  static const String _tokenKey = 'auth_token';

  AuthDataSourceImpl(this._dioClient, this._storage);

  @override
  Future<void> signIn(SignInParams signInParams) async {
    final response = await _dioClient.post(
      '/auth/login',
      data: {
        'username': signInParams.username,
        'password': signInParams.password,
      },
    );
    final token = response.data['token'];
    if (token != null && token is String) {
      await _dioClient.setToken(token);
    } else {
      throw Exception('Login failed: token not found');
    }
  }

  @override
  Future<void> signOut() async {
    await _dioClient.clearToken();
  }

  @override
  Future<bool> isLoggedIn() async {
    final token = await _storage.read(key: _tokenKey);
    print('token: $token');
    return token != null && token.isNotEmpty;
  }
}