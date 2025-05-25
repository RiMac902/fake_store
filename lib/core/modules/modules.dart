import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class Modules {
  @singleton
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  @singleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
}