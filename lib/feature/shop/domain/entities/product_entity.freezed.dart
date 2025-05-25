// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEntity {

 int get id; String get title; double get price; String get description; String get category; String get image; RatingEntity get rating;
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<ProductEntity> get copyWith => _$ProductEntityCopyWithImpl<ProductEntity>(this as ProductEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,category,image,rating);

@override
String toString() {
  return 'ProductEntity(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res>  {
  factory $ProductEntityCopyWith(ProductEntity value, $Res Function(ProductEntity) _then) = _$ProductEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, double price, String description, String category, String image, RatingEntity rating
});


$RatingEntityCopyWith<$Res> get rating;

}
/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? image = null,Object? rating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingEntity,
  ));
}
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingEntityCopyWith<$Res> get rating {
  
  return $RatingEntityCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// @nodoc


class _ProductEntity implements ProductEntity {
  const _ProductEntity({required this.id, required this.title, required this.price, required this.description, required this.category, required this.image, required this.rating});
  

@override final  int id;
@override final  String title;
@override final  double price;
@override final  String description;
@override final  String category;
@override final  String image;
@override final  RatingEntity rating;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityCopyWith<_ProductEntity> get copyWith => __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.image, image) || other.image == image)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,category,image,rating);

@override
String toString() {
  return 'ProductEntity(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res> implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(_ProductEntity value, $Res Function(_ProductEntity) _then) = __$ProductEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, double price, String description, String category, String image, RatingEntity rating
});


@override $RatingEntityCopyWith<$Res> get rating;

}
/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? image = null,Object? rating = null,}) {
  return _then(_ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as RatingEntity,
  ));
}

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingEntityCopyWith<$Res> get rating {
  
  return $RatingEntityCopyWith<$Res>(_self.rating, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}

/// @nodoc
mixin _$RatingEntity {

 double get rate; int get count;
/// Create a copy of RatingEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatingEntityCopyWith<RatingEntity> get copyWith => _$RatingEntityCopyWithImpl<RatingEntity>(this as RatingEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RatingEntity&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,rate,count);

@override
String toString() {
  return 'RatingEntity(rate: $rate, count: $count)';
}


}

/// @nodoc
abstract mixin class $RatingEntityCopyWith<$Res>  {
  factory $RatingEntityCopyWith(RatingEntity value, $Res Function(RatingEntity) _then) = _$RatingEntityCopyWithImpl;
@useResult
$Res call({
 double rate, int count
});




}
/// @nodoc
class _$RatingEntityCopyWithImpl<$Res>
    implements $RatingEntityCopyWith<$Res> {
  _$RatingEntityCopyWithImpl(this._self, this._then);

  final RatingEntity _self;
  final $Res Function(RatingEntity) _then;

/// Create a copy of RatingEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rate = null,Object? count = null,}) {
  return _then(_self.copyWith(
rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _RatingEntity implements RatingEntity {
  const _RatingEntity({required this.rate, required this.count});
  

@override final  double rate;
@override final  int count;

/// Create a copy of RatingEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatingEntityCopyWith<_RatingEntity> get copyWith => __$RatingEntityCopyWithImpl<_RatingEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RatingEntity&&(identical(other.rate, rate) || other.rate == rate)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,rate,count);

@override
String toString() {
  return 'RatingEntity(rate: $rate, count: $count)';
}


}

/// @nodoc
abstract mixin class _$RatingEntityCopyWith<$Res> implements $RatingEntityCopyWith<$Res> {
  factory _$RatingEntityCopyWith(_RatingEntity value, $Res Function(_RatingEntity) _then) = __$RatingEntityCopyWithImpl;
@override @useResult
$Res call({
 double rate, int count
});




}
/// @nodoc
class __$RatingEntityCopyWithImpl<$Res>
    implements _$RatingEntityCopyWith<$Res> {
  __$RatingEntityCopyWithImpl(this._self, this._then);

  final _RatingEntity _self;
  final $Res Function(_RatingEntity) _then;

/// Create a copy of RatingEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rate = null,Object? count = null,}) {
  return _then(_RatingEntity(
rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
