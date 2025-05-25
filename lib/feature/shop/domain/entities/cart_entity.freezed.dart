// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEntity {

 int get id; int get userId; String get date; List<CartProductEntity> get products;
/// Create a copy of CartEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartEntityCopyWith<CartEntity> get copyWith => _$CartEntityCopyWithImpl<CartEntity>(this as CartEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.products, products));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,date,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'CartEntity(id: $id, userId: $userId, date: $date, products: $products)';
}


}

/// @nodoc
abstract mixin class $CartEntityCopyWith<$Res>  {
  factory $CartEntityCopyWith(CartEntity value, $Res Function(CartEntity) _then) = _$CartEntityCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String date, List<CartProductEntity> products
});




}
/// @nodoc
class _$CartEntityCopyWithImpl<$Res>
    implements $CartEntityCopyWith<$Res> {
  _$CartEntityCopyWithImpl(this._self, this._then);

  final CartEntity _self;
  final $Res Function(CartEntity) _then;

/// Create a copy of CartEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? date = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CartProductEntity>,
  ));
}

}


/// @nodoc


class _CartEntity implements CartEntity {
  const _CartEntity({required this.id, required this.userId, required this.date, required final  List<CartProductEntity> products}): _products = products;
  

@override final  int id;
@override final  int userId;
@override final  String date;
 final  List<CartProductEntity> _products;
@override List<CartProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of CartEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartEntityCopyWith<_CartEntity> get copyWith => __$CartEntityCopyWithImpl<_CartEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,date,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CartEntity(id: $id, userId: $userId, date: $date, products: $products)';
}


}

/// @nodoc
abstract mixin class _$CartEntityCopyWith<$Res> implements $CartEntityCopyWith<$Res> {
  factory _$CartEntityCopyWith(_CartEntity value, $Res Function(_CartEntity) _then) = __$CartEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String date, List<CartProductEntity> products
});




}
/// @nodoc
class __$CartEntityCopyWithImpl<$Res>
    implements _$CartEntityCopyWith<$Res> {
  __$CartEntityCopyWithImpl(this._self, this._then);

  final _CartEntity _self;
  final $Res Function(_CartEntity) _then;

/// Create a copy of CartEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? date = null,Object? products = null,}) {
  return _then(_CartEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CartProductEntity>,
  ));
}


}

/// @nodoc
mixin _$CartProductEntity {

 int get productId; int get quantity;
/// Create a copy of CartProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartProductEntityCopyWith<CartProductEntity> get copyWith => _$CartProductEntityCopyWithImpl<CartProductEntity>(this as CartProductEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartProductEntity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'CartProductEntity(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CartProductEntityCopyWith<$Res>  {
  factory $CartProductEntityCopyWith(CartProductEntity value, $Res Function(CartProductEntity) _then) = _$CartProductEntityCopyWithImpl;
@useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class _$CartProductEntityCopyWithImpl<$Res>
    implements $CartProductEntityCopyWith<$Res> {
  _$CartProductEntityCopyWithImpl(this._self, this._then);

  final CartProductEntity _self;
  final $Res Function(CartProductEntity) _then;

/// Create a copy of CartProductEntity
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


class _CartProductEntity implements CartProductEntity {
  const _CartProductEntity({required this.productId, required this.quantity});
  

@override final  int productId;
@override final  int quantity;

/// Create a copy of CartProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartProductEntityCopyWith<_CartProductEntity> get copyWith => __$CartProductEntityCopyWithImpl<_CartProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartProductEntity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'CartProductEntity(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CartProductEntityCopyWith<$Res> implements $CartProductEntityCopyWith<$Res> {
  factory _$CartProductEntityCopyWith(_CartProductEntity value, $Res Function(_CartProductEntity) _then) = __$CartProductEntityCopyWithImpl;
@override @useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class __$CartProductEntityCopyWithImpl<$Res>
    implements _$CartProductEntityCopyWith<$Res> {
  __$CartProductEntityCopyWithImpl(this._self, this._then);

  final _CartProductEntity _self;
  final $Res Function(_CartProductEntity) _then;

/// Create a copy of CartProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(_CartProductEntity(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
