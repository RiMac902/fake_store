// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInParams {

 String get username; String get password;
/// Create a copy of SignInParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInParamsCopyWith<SignInParams> get copyWith => _$SignInParamsCopyWithImpl<SignInParams>(this as SignInParams, _$identity);

  /// Serializes this SignInParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInParams&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'SignInParams(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInParamsCopyWith<$Res>  {
  factory $SignInParamsCopyWith(SignInParams value, $Res Function(SignInParams) _then) = _$SignInParamsCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$SignInParamsCopyWithImpl<$Res>
    implements $SignInParamsCopyWith<$Res> {
  _$SignInParamsCopyWithImpl(this._self, this._then);

  final SignInParams _self;
  final $Res Function(SignInParams) _then;

/// Create a copy of SignInParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignInParams implements SignInParams {
  const _SignInParams({required this.username, required this.password});
  factory _SignInParams.fromJson(Map<String, dynamic> json) => _$SignInParamsFromJson(json);

@override final  String username;
@override final  String password;

/// Create a copy of SignInParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInParamsCopyWith<_SignInParams> get copyWith => __$SignInParamsCopyWithImpl<_SignInParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInParams&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'SignInParams(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$SignInParamsCopyWith<$Res> implements $SignInParamsCopyWith<$Res> {
  factory _$SignInParamsCopyWith(_SignInParams value, $Res Function(_SignInParams) _then) = __$SignInParamsCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$SignInParamsCopyWithImpl<$Res>
    implements _$SignInParamsCopyWith<$Res> {
  __$SignInParamsCopyWithImpl(this._self, this._then);

  final _SignInParams _self;
  final $Res Function(_SignInParams) _then;

/// Create a copy of SignInParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_SignInParams(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
