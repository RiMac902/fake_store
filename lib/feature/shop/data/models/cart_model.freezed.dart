// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartModel {

 int get id; int get userId; String get date; List<CartProductModel> get products;
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartModelCopyWith<CartModel> get copyWith => _$CartModelCopyWithImpl<CartModel>(this as CartModel, _$identity);

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,date,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'CartModel(id: $id, userId: $userId, date: $date, products: $products)';
}


}

/// @nodoc
abstract mixin class $CartModelCopyWith<$Res>  {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) _then) = _$CartModelCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String date, List<CartProductModel> products
});




}
/// @nodoc
class _$CartModelCopyWithImpl<$Res>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._self, this._then);

  final CartModel _self;
  final $Res Function(CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? date = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartProductModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CartModel implements CartModel {
  const _CartModel({required this.id, required this.userId, required this.date, required final  List<CartProductModel> products}): _products = products;
  factory _CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

@override final  int id;
@override final  int userId;
@override final  String date;
 final  List<CartProductModel> _products;
@override List<CartProductModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartModelCopyWith<_CartModel> get copyWith => __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,date,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CartModel(id: $id, userId: $userId, date: $date, products: $products)';
}


}

/// @nodoc
abstract mixin class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(_CartModel value, $Res Function(_CartModel) _then) = __$CartModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String date, List<CartProductModel> products
});




}
/// @nodoc
class __$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(this._self, this._then);

  final _CartModel _self;
  final $Res Function(_CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? date = null,Object? products = null,}) {
  return _then(_CartModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CartProductModel>,
  ));
}


}


/// @nodoc
mixin _$CartProductModel {

 int get productId; int get quantity;
/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartProductModelCopyWith<CartProductModel> get copyWith => _$CartProductModelCopyWithImpl<CartProductModel>(this as CartProductModel, _$identity);

  /// Serializes this CartProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartProductModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'CartProductModel(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CartProductModelCopyWith<$Res>  {
  factory $CartProductModelCopyWith(CartProductModel value, $Res Function(CartProductModel) _then) = _$CartProductModelCopyWithImpl;
@useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class _$CartProductModelCopyWithImpl<$Res>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._self, this._then);

  final CartProductModel _self;
  final $Res Function(CartProductModel) _then;

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CartProductModel implements CartProductModel {
  const _CartProductModel({required this.productId, required this.quantity});
  factory _CartProductModel.fromJson(Map<String, dynamic> json) => _$CartProductModelFromJson(json);

@override final  int productId;
@override final  int quantity;

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartProductModelCopyWith<_CartProductModel> get copyWith => __$CartProductModelCopyWithImpl<_CartProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartProductModel&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'CartProductModel(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CartProductModelCopyWith<$Res> implements $CartProductModelCopyWith<$Res> {
  factory _$CartProductModelCopyWith(_CartProductModel value, $Res Function(_CartProductModel) _then) = __$CartProductModelCopyWithImpl;
@override @useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class __$CartProductModelCopyWithImpl<$Res>
    implements _$CartProductModelCopyWith<$Res> {
  __$CartProductModelCopyWithImpl(this._self, this._then);

  final _CartProductModel _self;
  final $Res Function(_CartProductModel) _then;

/// Create a copy of CartProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(_CartProductModel(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
