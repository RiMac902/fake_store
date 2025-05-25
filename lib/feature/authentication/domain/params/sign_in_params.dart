import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_params.freezed.dart';
part 'sign_in_params.g.dart';

@freezed
abstract class SignInParams with _$SignInParams {
  const factory SignInParams({
    required String username,
    required String password,
  }) = _SignInParams;

  factory SignInParams.fromJson(Map<String, dynamic> json) =>
      _$SignInParamsFromJson(json);
}