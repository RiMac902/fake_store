// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent()';
}


}

/// @nodoc
class $ShopEventCopyWith<$Res>  {
$ShopEventCopyWith(ShopEvent _, $Res Function(ShopEvent) __);
}


/// @nodoc


class Started implements ShopEvent {
  const Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent.started()';
}


}




/// @nodoc


class GetProducts implements ShopEvent {
  const GetProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent.getProducts()';
}


}




/// @nodoc


class GetProduct implements ShopEvent {
  const GetProduct(this.id);
  

 final  String id;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductCopyWith<GetProduct> get copyWith => _$GetProductCopyWithImpl<GetProduct>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProduct&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ShopEvent.getProduct(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetProductCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $GetProductCopyWith(GetProduct value, $Res Function(GetProduct) _then) = _$GetProductCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetProductCopyWithImpl<$Res>
    implements $GetProductCopyWith<$Res> {
  _$GetProductCopyWithImpl(this._self, this._then);

  final GetProduct _self;
  final $Res Function(GetProduct) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetProduct(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetCarts implements ShopEvent {
  const GetCarts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCarts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent.getCarts()';
}


}




/// @nodoc


class GetCart implements ShopEvent {
  const GetCart(this.id);
  

 final  String id;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCartCopyWith<GetCart> get copyWith => _$GetCartCopyWithImpl<GetCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCart&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ShopEvent.getCart(id: $id)';
}


}

/// @nodoc
abstract mixin class $GetCartCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $GetCartCopyWith(GetCart value, $Res Function(GetCart) _then) = _$GetCartCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$GetCartCopyWithImpl<$Res>
    implements $GetCartCopyWith<$Res> {
  _$GetCartCopyWithImpl(this._self, this._then);

  final GetCart _self;
  final $Res Function(GetCart) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(GetCart(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddToCart implements ShopEvent {
  const AddToCart(this.productId);
  

 final  String productId;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartCopyWith<AddToCart> get copyWith => _$AddToCartCopyWithImpl<AddToCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCart&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ShopEvent.addToCart(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $AddToCartCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $AddToCartCopyWith(AddToCart value, $Res Function(AddToCart) _then) = _$AddToCartCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$AddToCartCopyWithImpl<$Res>
    implements $AddToCartCopyWith<$Res> {
  _$AddToCartCopyWithImpl(this._self, this._then);

  final AddToCart _self;
  final $Res Function(AddToCart) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(AddToCart(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveFromCart implements ShopEvent {
  const RemoveFromCart(this.productId);
  

 final  String productId;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromCartCopyWith<RemoveFromCart> get copyWith => _$RemoveFromCartCopyWithImpl<RemoveFromCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromCart&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ShopEvent.removeFromCart(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $RemoveFromCartCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $RemoveFromCartCopyWith(RemoveFromCart value, $Res Function(RemoveFromCart) _then) = _$RemoveFromCartCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$RemoveFromCartCopyWithImpl<$Res>
    implements $RemoveFromCartCopyWith<$Res> {
  _$RemoveFromCartCopyWithImpl(this._self, this._then);

  final RemoveFromCart _self;
  final $Res Function(RemoveFromCart) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(RemoveFromCart(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateCartQuantity implements ShopEvent {
  const UpdateCartQuantity(this.productId, this.quantity);
  

 final  int productId;
 final  int quantity;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCartQuantityCopyWith<UpdateCartQuantity> get copyWith => _$UpdateCartQuantityCopyWithImpl<UpdateCartQuantity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCartQuantity&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,productId,quantity);

@override
String toString() {
  return 'ShopEvent.updateCartQuantity(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $UpdateCartQuantityCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $UpdateCartQuantityCopyWith(UpdateCartQuantity value, $Res Function(UpdateCartQuantity) _then) = _$UpdateCartQuantityCopyWithImpl;
@useResult
$Res call({
 int productId, int quantity
});




}
/// @nodoc
class _$UpdateCartQuantityCopyWithImpl<$Res>
    implements $UpdateCartQuantityCopyWith<$Res> {
  _$UpdateCartQuantityCopyWithImpl(this._self, this._then);

  final UpdateCartQuantity _self;
  final $Res Function(UpdateCartQuantity) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(UpdateCartQuantity(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AddToWishlist implements ShopEvent {
  const AddToWishlist(this.id);
  

 final  String id;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToWishlistCopyWith<AddToWishlist> get copyWith => _$AddToWishlistCopyWithImpl<AddToWishlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToWishlist&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ShopEvent.addToWishlist(id: $id)';
}


}

/// @nodoc
abstract mixin class $AddToWishlistCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $AddToWishlistCopyWith(AddToWishlist value, $Res Function(AddToWishlist) _then) = _$AddToWishlistCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$AddToWishlistCopyWithImpl<$Res>
    implements $AddToWishlistCopyWith<$Res> {
  _$AddToWishlistCopyWithImpl(this._self, this._then);

  final AddToWishlist _self;
  final $Res Function(AddToWishlist) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(AddToWishlist(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveFromWishlist implements ShopEvent {
  const RemoveFromWishlist(this.id);
  

 final  String id;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromWishlistCopyWith<RemoveFromWishlist> get copyWith => _$RemoveFromWishlistCopyWithImpl<RemoveFromWishlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromWishlist&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ShopEvent.removeFromWishlist(id: $id)';
}


}

/// @nodoc
abstract mixin class $RemoveFromWishlistCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $RemoveFromWishlistCopyWith(RemoveFromWishlist value, $Res Function(RemoveFromWishlist) _then) = _$RemoveFromWishlistCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$RemoveFromWishlistCopyWithImpl<$Res>
    implements $RemoveFromWishlistCopyWith<$Res> {
  _$RemoveFromWishlistCopyWithImpl(this._self, this._then);

  final RemoveFromWishlist _self;
  final $Res Function(RemoveFromWishlist) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RemoveFromWishlist(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetWishlist implements ShopEvent {
  const GetWishlist();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWishlist);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopEvent.getWishlist()';
}


}




/// @nodoc


class IncreaseCartQuantity implements ShopEvent {
  const IncreaseCartQuantity(this.productId);
  

 final  String productId;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IncreaseCartQuantityCopyWith<IncreaseCartQuantity> get copyWith => _$IncreaseCartQuantityCopyWithImpl<IncreaseCartQuantity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IncreaseCartQuantity&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ShopEvent.increaseCartQuantity(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $IncreaseCartQuantityCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $IncreaseCartQuantityCopyWith(IncreaseCartQuantity value, $Res Function(IncreaseCartQuantity) _then) = _$IncreaseCartQuantityCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$IncreaseCartQuantityCopyWithImpl<$Res>
    implements $IncreaseCartQuantityCopyWith<$Res> {
  _$IncreaseCartQuantityCopyWithImpl(this._self, this._then);

  final IncreaseCartQuantity _self;
  final $Res Function(IncreaseCartQuantity) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(IncreaseCartQuantity(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DecreaseCartQuantity implements ShopEvent {
  const DecreaseCartQuantity(this.productId);
  

 final  String productId;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecreaseCartQuantityCopyWith<DecreaseCartQuantity> get copyWith => _$DecreaseCartQuantityCopyWithImpl<DecreaseCartQuantity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecreaseCartQuantity&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ShopEvent.decreaseCartQuantity(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $DecreaseCartQuantityCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $DecreaseCartQuantityCopyWith(DecreaseCartQuantity value, $Res Function(DecreaseCartQuantity) _then) = _$DecreaseCartQuantityCopyWithImpl;
@useResult
$Res call({
 String productId
});




}
/// @nodoc
class _$DecreaseCartQuantityCopyWithImpl<$Res>
    implements $DecreaseCartQuantityCopyWith<$Res> {
  _$DecreaseCartQuantityCopyWithImpl(this._self, this._then);

  final DecreaseCartQuantity _self;
  final $Res Function(DecreaseCartQuantity) _then;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = null,}) {
  return _then(DecreaseCartQuantity(
null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ShopState {

 bool get isLoading; List<ProductUiModel> get products; ProductUiModel? get product; List<CartItem> get cart; List<ProductUiModel> get wishlist; String? get productsError; String? get cartError; String? get wishlistError;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopStateCopyWith<ShopState> get copyWith => _$ShopStateCopyWithImpl<ShopState>(this as ShopState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other.cart, cart)&&const DeepCollectionEquality().equals(other.wishlist, wishlist)&&(identical(other.productsError, productsError) || other.productsError == productsError)&&(identical(other.cartError, cartError) || other.cartError == cartError)&&(identical(other.wishlistError, wishlistError) || other.wishlistError == wishlistError));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(products),product,const DeepCollectionEquality().hash(cart),const DeepCollectionEquality().hash(wishlist),productsError,cartError,wishlistError);

@override
String toString() {
  return 'ShopState(isLoading: $isLoading, products: $products, product: $product, cart: $cart, wishlist: $wishlist, productsError: $productsError, cartError: $cartError, wishlistError: $wishlistError)';
}


}

/// @nodoc
abstract mixin class $ShopStateCopyWith<$Res>  {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) _then) = _$ShopStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<ProductUiModel> products, ProductUiModel? product, List<CartItem> cart, List<ProductUiModel> wishlist, String? productsError, String? cartError, String? wishlistError
});


$ProductUiModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$ShopStateCopyWithImpl<$Res>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._self, this._then);

  final ShopState _self;
  final $Res Function(ShopState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? products = null,Object? product = freezed,Object? cart = null,Object? wishlist = null,Object? productsError = freezed,Object? cartError = freezed,Object? wishlistError = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductUiModel>,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductUiModel?,cart: null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as List<CartItem>,wishlist: null == wishlist ? _self.wishlist : wishlist // ignore: cast_nullable_to_non_nullable
as List<ProductUiModel>,productsError: freezed == productsError ? _self.productsError : productsError // ignore: cast_nullable_to_non_nullable
as String?,cartError: freezed == cartError ? _self.cartError : cartError // ignore: cast_nullable_to_non_nullable
as String?,wishlistError: freezed == wishlistError ? _self.wishlistError : wishlistError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductUiModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductUiModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc


class _ShopState implements ShopState {
  const _ShopState({this.isLoading = false, final  List<ProductUiModel> products = const [], this.product, final  List<CartItem> cart = const [], final  List<ProductUiModel> wishlist = const [], this.productsError, this.cartError, this.wishlistError}): _products = products,_cart = cart,_wishlist = wishlist;
  

@override@JsonKey() final  bool isLoading;
 final  List<ProductUiModel> _products;
@override@JsonKey() List<ProductUiModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  ProductUiModel? product;
 final  List<CartItem> _cart;
@override@JsonKey() List<CartItem> get cart {
  if (_cart is EqualUnmodifiableListView) return _cart;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cart);
}

 final  List<ProductUiModel> _wishlist;
@override@JsonKey() List<ProductUiModel> get wishlist {
  if (_wishlist is EqualUnmodifiableListView) return _wishlist;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wishlist);
}

@override final  String? productsError;
@override final  String? cartError;
@override final  String? wishlistError;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopStateCopyWith<_ShopState> get copyWith => __$ShopStateCopyWithImpl<_ShopState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other._cart, _cart)&&const DeepCollectionEquality().equals(other._wishlist, _wishlist)&&(identical(other.productsError, productsError) || other.productsError == productsError)&&(identical(other.cartError, cartError) || other.cartError == cartError)&&(identical(other.wishlistError, wishlistError) || other.wishlistError == wishlistError));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_products),product,const DeepCollectionEquality().hash(_cart),const DeepCollectionEquality().hash(_wishlist),productsError,cartError,wishlistError);

@override
String toString() {
  return 'ShopState(isLoading: $isLoading, products: $products, product: $product, cart: $cart, wishlist: $wishlist, productsError: $productsError, cartError: $cartError, wishlistError: $wishlistError)';
}


}

/// @nodoc
abstract mixin class _$ShopStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory _$ShopStateCopyWith(_ShopState value, $Res Function(_ShopState) _then) = __$ShopStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<ProductUiModel> products, ProductUiModel? product, List<CartItem> cart, List<ProductUiModel> wishlist, String? productsError, String? cartError, String? wishlistError
});


@override $ProductUiModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$ShopStateCopyWithImpl<$Res>
    implements _$ShopStateCopyWith<$Res> {
  __$ShopStateCopyWithImpl(this._self, this._then);

  final _ShopState _self;
  final $Res Function(_ShopState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? products = null,Object? product = freezed,Object? cart = null,Object? wishlist = null,Object? productsError = freezed,Object? cartError = freezed,Object? wishlistError = freezed,}) {
  return _then(_ShopState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductUiModel>,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductUiModel?,cart: null == cart ? _self._cart : cart // ignore: cast_nullable_to_non_nullable
as List<CartItem>,wishlist: null == wishlist ? _self._wishlist : wishlist // ignore: cast_nullable_to_non_nullable
as List<ProductUiModel>,productsError: freezed == productsError ? _self.productsError : productsError // ignore: cast_nullable_to_non_nullable
as String?,cartError: freezed == cartError ? _self.cartError : cartError // ignore: cast_nullable_to_non_nullable
as String?,wishlistError: freezed == wishlistError ? _self.wishlistError : wishlistError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductUiModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductUiModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
