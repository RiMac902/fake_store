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
  const AddToCart(this.params);
  

 final  AddToCartParams params;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartCopyWith<AddToCart> get copyWith => _$AddToCartCopyWithImpl<AddToCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCart&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'ShopEvent.addToCart(params: $params)';
}


}

/// @nodoc
abstract mixin class $AddToCartCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $AddToCartCopyWith(AddToCart value, $Res Function(AddToCart) _then) = _$AddToCartCopyWithImpl;
@useResult
$Res call({
 AddToCartParams params
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
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(AddToCart(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as AddToCartParams,
  ));
}


}

/// @nodoc


class RemoveFromCart implements ShopEvent {
  const RemoveFromCart(this.id);
  

 final  String id;

/// Create a copy of ShopEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFromCartCopyWith<RemoveFromCart> get copyWith => _$RemoveFromCartCopyWithImpl<RemoveFromCart>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFromCart&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ShopEvent.removeFromCart(id: $id)';
}


}

/// @nodoc
abstract mixin class $RemoveFromCartCopyWith<$Res> implements $ShopEventCopyWith<$Res> {
  factory $RemoveFromCartCopyWith(RemoveFromCart value, $Res Function(RemoveFromCart) _then) = _$RemoveFromCartCopyWithImpl;
@useResult
$Res call({
 String id
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
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RemoveFromCart(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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
mixin _$ShopState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopState()';
}


}

/// @nodoc
class $ShopStateCopyWith<$Res>  {
$ShopStateCopyWith(ShopState _, $Res Function(ShopState) __);
}


/// @nodoc


class Initial implements ShopState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopState.initial()';
}


}




/// @nodoc


class Loading implements ShopState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopState.loading()';
}


}




/// @nodoc


class ProductsLoaded implements ShopState {
  const ProductsLoaded(final  List<ProductEntity> products): _products = products;
  

 final  List<ProductEntity> _products;
 List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadedCopyWith<ProductsLoaded> get copyWith => _$ProductsLoadedCopyWithImpl<ProductsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoaded&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ShopState.productsLoaded(products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ProductsLoadedCopyWith(ProductsLoaded value, $Res Function(ProductsLoaded) _then) = _$ProductsLoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> products
});




}
/// @nodoc
class _$ProductsLoadedCopyWithImpl<$Res>
    implements $ProductsLoadedCopyWith<$Res> {
  _$ProductsLoadedCopyWithImpl(this._self, this._then);

  final ProductsLoaded _self;
  final $Res Function(ProductsLoaded) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(ProductsLoaded(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}


}

/// @nodoc


class ProductLoaded implements ShopState {
  const ProductLoaded(this.product);
  

 final  ProductEntity product;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductLoadedCopyWith<ProductLoaded> get copyWith => _$ProductLoadedCopyWithImpl<ProductLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductLoaded&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,product);

@override
String toString() {
  return 'ShopState.productLoaded(product: $product)';
}


}

/// @nodoc
abstract mixin class $ProductLoadedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ProductLoadedCopyWith(ProductLoaded value, $Res Function(ProductLoaded) _then) = _$ProductLoadedCopyWithImpl;
@useResult
$Res call({
 ProductEntity product
});


$ProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class _$ProductLoadedCopyWithImpl<$Res>
    implements $ProductLoadedCopyWith<$Res> {
  _$ProductLoadedCopyWithImpl(this._self, this._then);

  final ProductLoaded _self;
  final $Res Function(ProductLoaded) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,}) {
  return _then(ProductLoaded(
null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity,
  ));
}

/// Create a copy of ShopState
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


class CartsLoaded implements ShopState {
  const CartsLoaded(final  List<CartEntity> carts): _carts = carts;
  

 final  List<CartEntity> _carts;
 List<CartEntity> get carts {
  if (_carts is EqualUnmodifiableListView) return _carts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_carts);
}


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartsLoadedCopyWith<CartsLoaded> get copyWith => _$CartsLoadedCopyWithImpl<CartsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartsLoaded&&const DeepCollectionEquality().equals(other._carts, _carts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_carts));

@override
String toString() {
  return 'ShopState.cartsLoaded(carts: $carts)';
}


}

/// @nodoc
abstract mixin class $CartsLoadedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $CartsLoadedCopyWith(CartsLoaded value, $Res Function(CartsLoaded) _then) = _$CartsLoadedCopyWithImpl;
@useResult
$Res call({
 List<CartEntity> carts
});




}
/// @nodoc
class _$CartsLoadedCopyWithImpl<$Res>
    implements $CartsLoadedCopyWith<$Res> {
  _$CartsLoadedCopyWithImpl(this._self, this._then);

  final CartsLoaded _self;
  final $Res Function(CartsLoaded) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? carts = null,}) {
  return _then(CartsLoaded(
null == carts ? _self._carts : carts // ignore: cast_nullable_to_non_nullable
as List<CartEntity>,
  ));
}


}

/// @nodoc


class CartLoaded implements ShopState {
  const CartLoaded(this.cart);
  

 final  CartEntity cart;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartLoadedCopyWith<CartLoaded> get copyWith => _$CartLoadedCopyWithImpl<CartLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLoaded&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'ShopState.cartLoaded(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $CartLoadedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $CartLoadedCopyWith(CartLoaded value, $Res Function(CartLoaded) _then) = _$CartLoadedCopyWithImpl;
@useResult
$Res call({
 CartEntity cart
});


$CartEntityCopyWith<$Res> get cart;

}
/// @nodoc
class _$CartLoadedCopyWithImpl<$Res>
    implements $CartLoadedCopyWith<$Res> {
  _$CartLoadedCopyWithImpl(this._self, this._then);

  final CartLoaded _self;
  final $Res Function(CartLoaded) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(CartLoaded(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as CartEntity,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartEntityCopyWith<$Res> get cart {
  
  return $CartEntityCopyWith<$Res>(_self.cart, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}

/// @nodoc


class CartRemoved implements ShopState {
  const CartRemoved();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartRemoved);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopState.cartRemoved()';
}


}




/// @nodoc


class CartUpdated implements ShopState {
  const CartUpdated(this.cart);
  

 final  CartEntity cart;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartUpdatedCopyWith<CartUpdated> get copyWith => _$CartUpdatedCopyWithImpl<CartUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartUpdated&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'ShopState.cartUpdated(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $CartUpdatedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $CartUpdatedCopyWith(CartUpdated value, $Res Function(CartUpdated) _then) = _$CartUpdatedCopyWithImpl;
@useResult
$Res call({
 CartEntity cart
});


$CartEntityCopyWith<$Res> get cart;

}
/// @nodoc
class _$CartUpdatedCopyWithImpl<$Res>
    implements $CartUpdatedCopyWith<$Res> {
  _$CartUpdatedCopyWithImpl(this._self, this._then);

  final CartUpdated _self;
  final $Res Function(CartUpdated) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(CartUpdated(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as CartEntity,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartEntityCopyWith<$Res> get cart {
  
  return $CartEntityCopyWith<$Res>(_self.cart, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}

/// @nodoc


class CartQuantityUpdated implements ShopState {
  const CartQuantityUpdated(this.cart);
  

 final  CartEntity cart;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartQuantityUpdatedCopyWith<CartQuantityUpdated> get copyWith => _$CartQuantityUpdatedCopyWithImpl<CartQuantityUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartQuantityUpdated&&(identical(other.cart, cart) || other.cart == cart));
}


@override
int get hashCode => Object.hash(runtimeType,cart);

@override
String toString() {
  return 'ShopState.cartQuantityUpdated(cart: $cart)';
}


}

/// @nodoc
abstract mixin class $CartQuantityUpdatedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $CartQuantityUpdatedCopyWith(CartQuantityUpdated value, $Res Function(CartQuantityUpdated) _then) = _$CartQuantityUpdatedCopyWithImpl;
@useResult
$Res call({
 CartEntity cart
});


$CartEntityCopyWith<$Res> get cart;

}
/// @nodoc
class _$CartQuantityUpdatedCopyWithImpl<$Res>
    implements $CartQuantityUpdatedCopyWith<$Res> {
  _$CartQuantityUpdatedCopyWithImpl(this._self, this._then);

  final CartQuantityUpdated _self;
  final $Res Function(CartQuantityUpdated) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cart = null,}) {
  return _then(CartQuantityUpdated(
null == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as CartEntity,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartEntityCopyWith<$Res> get cart {
  
  return $CartEntityCopyWith<$Res>(_self.cart, (value) {
    return _then(_self.copyWith(cart: value));
  });
}
}

/// @nodoc


class WishlistLoaded implements ShopState {
  const WishlistLoaded(final  List<ProductEntity> products): _products = products;
  

 final  List<ProductEntity> _products;
 List<ProductEntity> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WishlistLoadedCopyWith<WishlistLoaded> get copyWith => _$WishlistLoadedCopyWithImpl<WishlistLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistLoaded&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ShopState.wishlistLoaded(products: $products)';
}


}

/// @nodoc
abstract mixin class $WishlistLoadedCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $WishlistLoadedCopyWith(WishlistLoaded value, $Res Function(WishlistLoaded) _then) = _$WishlistLoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductEntity> products
});




}
/// @nodoc
class _$WishlistLoadedCopyWithImpl<$Res>
    implements $WishlistLoadedCopyWith<$Res> {
  _$WishlistLoadedCopyWithImpl(this._self, this._then);

  final WishlistLoaded _self;
  final $Res Function(WishlistLoaded) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(WishlistLoaded(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,
  ));
}


}

/// @nodoc


class WishlistUpdated implements ShopState {
  const WishlistUpdated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WishlistUpdated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShopState.wishlistUpdated()';
}


}




/// @nodoc


class Error implements ShopState {
  const Error(this.message);
  

 final  String message;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ShopState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
