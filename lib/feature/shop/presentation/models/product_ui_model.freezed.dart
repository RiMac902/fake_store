// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductUiModel {

 ProductEntity get product; bool get inWishlist;
/// Create a copy of ProductUiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductUiModelCopyWith<ProductUiModel> get copyWith => _$ProductUiModelCopyWithImpl<ProductUiModel>(this as ProductUiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductUiModel&&(identical(other.product, product) || other.product == product)&&(identical(other.inWishlist, inWishlist) || other.inWishlist == inWishlist));
}


@override
int get hashCode => Object.hash(runtimeType,product,inWishlist);

@override
String toString() {
  return 'ProductUiModel(product: $product, inWishlist: $inWishlist)';
}


}

/// @nodoc
abstract mixin class $ProductUiModelCopyWith<$Res>  {
  factory $ProductUiModelCopyWith(ProductUiModel value, $Res Function(ProductUiModel) _then) = _$ProductUiModelCopyWithImpl;
@useResult
$Res call({
 ProductEntity product, bool inWishlist
});


$ProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductUiModelCopyWithImpl<$Res>
    implements $ProductUiModelCopyWith<$Res> {
  _$ProductUiModelCopyWithImpl(this._self, this._then);

  final ProductUiModel _self;
  final $Res Function(ProductUiModel) _then;

/// Create a copy of ProductUiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? inWishlist = null,}) {
  return _then(_self.copyWith(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity,inWishlist: null == inWishlist ? _self.inWishlist : inWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ProductUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res> get product {
  
  return $ProductEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc


class _ProductUiModel implements ProductUiModel {
  const _ProductUiModel({required this.product, required this.inWishlist});
  

@override final  ProductEntity product;
@override final  bool inWishlist;

/// Create a copy of ProductUiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductUiModelCopyWith<_ProductUiModel> get copyWith => __$ProductUiModelCopyWithImpl<_ProductUiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductUiModel&&(identical(other.product, product) || other.product == product)&&(identical(other.inWishlist, inWishlist) || other.inWishlist == inWishlist));
}


@override
int get hashCode => Object.hash(runtimeType,product,inWishlist);

@override
String toString() {
  return 'ProductUiModel(product: $product, inWishlist: $inWishlist)';
}


}

/// @nodoc
abstract mixin class _$ProductUiModelCopyWith<$Res> implements $ProductUiModelCopyWith<$Res> {
  factory _$ProductUiModelCopyWith(_ProductUiModel value, $Res Function(_ProductUiModel) _then) = __$ProductUiModelCopyWithImpl;
@override @useResult
$Res call({
 ProductEntity product, bool inWishlist
});


@override $ProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class __$ProductUiModelCopyWithImpl<$Res>
    implements _$ProductUiModelCopyWith<$Res> {
  __$ProductUiModelCopyWithImpl(this._self, this._then);

  final _ProductUiModel _self;
  final $Res Function(_ProductUiModel) _then;

/// Create a copy of ProductUiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? inWishlist = null,}) {
  return _then(_ProductUiModel(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity,inWishlist: null == inWishlist ? _self.inWishlist : inWishlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ProductUiModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res> get product {
  
  return $ProductEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
