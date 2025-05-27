import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/add_to_cart_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/add_to_wishlist_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_cart_usecasse.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_carts_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_product_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_products_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_wishlist_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/remove_from_wishlist.dart';
import 'package:fake_store/feature/shop/domain/usecases/remove_rom_cart_usecase.dart';
import 'package:fake_store/feature/shop/presentation/models/cart_item.dart';
import 'package:fake_store/feature/shop/presentation/models/product_ui_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:collection/collection.dart';

part 'shop_bloc.freezed.dart';
part 'shop_event.dart';
part 'shop_state.dart';

@singleton
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final GetProductsUseCase _getProductsUseCase;
  final GetProductUseCase _getProductUseCase;
  final GetCartsUseCase _getCartsUseCase;
  final GetCartUseCase _getCartUseCase;
  final AddToCartUseCase _addToCartUseCase;
  final RemoveFromCartUseCase _removeFromCartUseCase;
  final AddToWishlistUseCase _addToWishlistUseCase;
  final RemoveFromWishlistUseCase _removeFromWishlistUseCase;
  final GetWishlistUseCase _getWishlistUseCase;

  ShopBloc(
    this._getProductsUseCase,
    this._getProductUseCase,
    this._getCartsUseCase,
    this._getCartUseCase,
    this._addToCartUseCase,
    this._removeFromCartUseCase,
    this._addToWishlistUseCase,
    this._removeFromWishlistUseCase,
    this._getWishlistUseCase,
  ) : super(const ShopState()) {
    on<ShopEvent>((event, emit) async {
      switch (event) {
        case GetProducts():
          await _onGetProducts(event, emit);
        case GetProduct():
          await _onGetProduct(event, emit);
        case GetCarts():
          await _onGetCarts(event, emit);
        case GetCart():
          await _onGetCart(event, emit);
        case AddToCart():
          await _onAddToCart(event, emit);
        case RemoveFromCart():
          await _onRemoveFromCart(event, emit);
        case UpdateCartQuantity():
          await _onUpdateCartQuantity(event, emit);
        case AddToWishlist():
          await _onAddToWishlist(event, emit);
        case RemoveFromWishlist():
          await _onRemoveFromWishlist(event, emit);
        case GetWishlist():
          await _onGetWishlist(event, emit);
        case Started():
          await _onStarted(event, emit);
        case IncreaseCartQuantity():
          await _onIncreaseCartQuantity(event, emit);
        case DecreaseCartQuantity():
          await _onDecreaseCartQuantity(event, emit);
      }
    });
  }

  // --- PRODUCTS ---
  Future<void> _onGetProducts(
    GetProducts event,
    Emitter<ShopState> emit,
  ) async {
    log('_onGetProducts');
    emit(state.copyWith(isLoading: true));
    try {
      log('getProducts');
      final productsResult = await _getProductsUseCase.call(NoParams());
      final wishlistResult = await _getWishlistUseCase.call(NoParams());

      final wishlistIds = wishlistResult.fold(
        (failure) => <String>{},
        (wishlistProducts) =>
            wishlistProducts.map((p) => p.id.toString()).toSet(),
      );

      log('wishlistIds: $wishlistIds');

      productsResult.fold(
        (failure) => emit(
          state.copyWith(isLoading: false, productsError: failure.message),
        ),
        (products) => emit(
          state.copyWith(
            isLoading: false,
            products: products
                .map(
                  (product) => ProductUiModel(
                    product: product,
                    inWishlist: wishlistIds.contains(product.id.toString()),
                  ),
                )
                .toList(),
          ),
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, productsError: e.toString()));
    }
  }

  Future<void> _onGetProduct(GetProduct event, Emitter<ShopState> emit) async {
    try {
      final product = await _getProductUseCase.call(event.id);
      product.fold(
        (failure) => emit(
          state.copyWith(isLoading: false, productsError: failure.message),
        ),
        (product) => emit(
          state.copyWith(
            isLoading: false,
            product: ProductUiModel(product: product, inWishlist: false),
          ),
        ),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false, productsError: e.toString()));
    }
  }

  // --- CARTS ---
  Future<void> _onGetCarts(GetCarts event, Emitter<ShopState> emit) async {
    try {
      final cartsResult = await _getCartsUseCase.call(NoParams());
      cartsResult.fold(
        (failure) => emit(state.copyWith(cartError: failure.message)),
        (carts) => emit(
          state.copyWith(
            cart: carts
                .expand((cartEntity) {
                  return cartEntity.products.map((cartProduct) {
                    final productUi = state.products.firstWhereOrNull(
                      (p) => p.product.id == cartProduct.productId,
                    );
                    return productUi != null
                        ? CartItem(product: productUi, quantity: cartProduct.quantity)
                        : null;
                  });
                })
                .whereType<CartItem>()
                .toList(),
          ),
        ),
      );
    } catch (e) {
      emit(state.copyWith(cartError: e.toString()));
    }
  }

  Future<void> _onIncreaseCartQuantity(
    IncreaseCartQuantity event,
    Emitter<ShopState> emit,
  ) async {
    final cart = List<CartItem>.from(state.cart);
    final index = cart.indexWhere(
      (item) => item.product.product.id.toString() == event.productId,
    );
    if (index != -1) {
      cart[index] = cart[index].copyWith(quantity: cart[index].quantity + 1);
      emit(state.copyWith(cart: cart));
    }
  }

  Future<void> _onDecreaseCartQuantity(
    DecreaseCartQuantity event,
    Emitter<ShopState> emit,
  ) async {
    final cart = List<CartItem>.from(state.cart);
    final index = cart.indexWhere(
      (item) => item.product.product.id.toString() == event.productId,
    );
    if (index != -1 && cart[index].quantity > 1) {
      cart[index] = cart[index].copyWith(quantity: cart[index].quantity - 1);
      emit(state.copyWith(cart: cart));
    } else if (index != -1 && cart[index].quantity == 1) {
      cart.removeAt(index);
      emit(state.copyWith(cart: cart));
    }
  }

  Future<void> _onGetCart(GetCart event, Emitter<ShopState> emit) async {
    try {
      final cart = await _getCartUseCase.call(event.id);
      cart.fold(
        (failure) => emit(state.copyWith(cartError: failure.message)),
        (cartEntity) {
          final cartItems = cartEntity.products.map((cartProduct) {
            final productUi = state.products.firstWhereOrNull(
              (p) => p.product.id == cartProduct.productId,
            );
            return productUi != null
                ? CartItem(product: productUi, quantity: cartProduct.quantity)
                : null;
          }).whereType<CartItem>().toList();
          emit(state.copyWith(cart: cartItems));
        },
      );
    } catch (e) {
      emit(state.copyWith(cartError: e.toString()));
    }
  }

  // --- ADD/REMOVE CART ---
  Future<void> _onAddToCart(AddToCart event, Emitter<ShopState> emit) async {
    final product = state.products.firstWhereOrNull(
      (p) => p.product.id.toString() == event.productId,
    );
    if (product == null) return;

    final cart = List<CartItem>.from(state.cart);
    final index = cart.indexWhere(
      (item) => item.product.product.id.toString() == event.productId,
    );

    if (index == -1) {
      cart.add(CartItem(product: product, quantity: 1));
    } else {
      cart[index] = cart[index].copyWith(quantity: cart[index].quantity + 1);
    }
    emit(state.copyWith(cart: cart));
  }

  Future<void> _onRemoveFromCart(
    RemoveFromCart event,
    Emitter<ShopState> emit,
  ) async {
    final cart = state.cart
        .where((item) => item.product.product.id.toString() != event.productId)
        .toList();
    emit(state.copyWith(cart: cart));
  }

  // --- CART QUANTITY ---
  Future<void> _onUpdateCartQuantity(
    UpdateCartQuantity event,
    Emitter<ShopState> emit,
  ) async {}

  Future<void> _onAddToWishlist(
    AddToWishlist event,
    Emitter<ShopState> emit,
  ) async {
    try {
      await _addToWishlistUseCase.call(event.id);

      final updatedWishlistIds = {
        ...state.wishlist.map((p) => p.product.id.toString()),
        event.id,
      };

      final updatedProducts = state.products
          .map(
            (ui) => ui.copyWith(
              inWishlist: updatedWishlistIds.contains(ui.product.id.toString()),
            ),
          )
          .toList();

      final wishlistUi = updatedProducts
          .where((ui) => updatedWishlistIds.contains(ui.product.id.toString()))
          .toList();

      emit(
        state.copyWith(
          products: updatedProducts,
          wishlist: wishlistUi,
          wishlistError: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(wishlistError: e.toString()));
    }
  }

  Future<void> _onRemoveFromWishlist(
    RemoveFromWishlist event,
    Emitter<ShopState> emit,
  ) async {
    try {
      await _removeFromWishlistUseCase.call(event.id);
      final updatedWishlistIds = state.wishlist
          .map((p) => p.product.id.toString())
          .where((id) => id != event.id)
          .toSet();

      final updatedProducts = state.products
          .map(
            (ui) => ui.copyWith(
              inWishlist: updatedWishlistIds.contains(ui.product.id.toString()),
            ),
          )
          .toList();

      final wishlistUi = updatedProducts
          .where((ui) => updatedWishlistIds.contains(ui.product.id.toString()))
          .toList();

      emit(
        state.copyWith(
          products: updatedProducts,
          wishlist: wishlistUi,
          wishlistError: null,
        ),
      );
    } catch (e) {
      emit(state.copyWith(wishlistError: e.toString()));
    }
  }

  Future<void> _onGetWishlist(
    GetWishlist event,
    Emitter<ShopState> emit,
  ) async {
    try {
      final wishlistResult = await _getWishlistUseCase.call(NoParams());
      wishlistResult.fold(
        (failure) => emit(state.copyWith(wishlistError: failure.message)),
        (wishlistProducts) => emit(
          state.copyWith(
            wishlist: wishlistProducts
                .map((p) => ProductUiModel(product: p, inWishlist: true))
                .toList(),
          ),
        ),
      );
    } catch (e) {
      emit(state.copyWith(wishlistError: e.toString()));
    }
  }

  Future<void> _onStarted(Started event, Emitter<ShopState> emit) async {
    add(const GetProducts());
    add(const GetWishlist());
  }
}
