import 'package:bloc/bloc.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:fake_store/feature/shop/domain/usecases/add_to_cart_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/add_to_wishlist_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_cart_usecasse.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_carts_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_product_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_products_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/get_wishlist_usecase.dart';
import 'package:fake_store/feature/shop/domain/usecases/remove_from_wishlist.dart';
import 'package:fake_store/feature/shop/domain/usecases/remove_rom_cart_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

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

  final Set<String> _wishlist = {};

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
  ) : super(const ShopState.initial()) {
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
      }
    });
  }

  // --- PRODUCTS ---
  Future<void> _onGetProducts(
    GetProducts event,
    Emitter<ShopState> emit,
  ) async {
    emit(const ShopState.loading());
    final result = await _getProductsUseCase(NoParams());
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (products) => emit(ShopState.productsLoaded(products)),
    );
  }

  Future<void> _onGetProduct(GetProduct event, Emitter<ShopState> emit) async {
    emit(const ShopState.loading());
    final result = await _getProductUseCase(event.id);
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (product) => emit(ShopState.productLoaded(product)),
    );
  }

  // --- CARTS ---
  Future<void> _onGetCarts(GetCarts event, Emitter<ShopState> emit) async {
    emit(const ShopState.loading());
    final result = await _getCartsUseCase(NoParams());
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (carts) => emit(ShopState.cartsLoaded(carts)),
    );
  }

  Future<void> _onGetCart(GetCart event, Emitter<ShopState> emit) async {
    emit(const ShopState.loading());
    final result = await _getCartUseCase(event.id);
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (cart) => emit(ShopState.cartLoaded(cart)),
    );
  }

  // --- ADD/REMOVE CART ---
  Future<void> _onAddToCart(AddToCart event, Emitter<ShopState> emit) async {
    emit(const ShopState.loading());
    final result = await _addToCartUseCase(event.params);
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (cart) {
        emit(ShopState.cartLoaded(cart));
        add(const GetProducts());
      },
    );
  }

  Future<void> _onRemoveFromCart(
    RemoveFromCart event,
    Emitter<ShopState> emit,
  ) async {
    // Get current cart
    final cartsResult = await _getCartsUseCase(NoParams());
    if (cartsResult.isLeft()) {
      emit(ShopState.error(cartsResult.fold(
        (failure) => failure.message,
        (_) => 'Failed to get carts',
      )));
      return;
    }

    final carts = cartsResult.getOrElse((_) => []);
    if (carts.isEmpty) {
      emit(const ShopState.error('No cart found'));
      return;
    }

    final currentCart = carts.where((cart) => cart.userId == 1).isNotEmpty
        ? carts.firstWhere((cart) => cart.userId == 1)
        : null;
    
    if (currentCart == null) {
      emit(const ShopState.error('No cart found'));
      return;
    }

    final updatedProducts = currentCart.products
        .where((product) => product.productId.toString() != event.id)
        .toList();

    if (updatedProducts.isEmpty) {
      final result = await _removeFromCartUseCase(event.id);
      result.fold(
        (failure) => emit(ShopState.error(failure.message)),
        (_) {
          emit(const ShopState.cartRemoved());
          add(const GetProducts());
        },
      );
      return;
    }

    final params = AddToCartParams(
      userId: currentCart.userId,
      date: DateTime.now().toIso8601String(),
      products: updatedProducts,
    );

    final result = await _addToCartUseCase(params);
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (cart) {
        emit(ShopState.cartUpdated(cart));
        add(const GetProducts());
      },
    );
  }

  // --- CART QUANTITY ---
  Future<void> _onUpdateCartQuantity(
    UpdateCartQuantity event,
    Emitter<ShopState> emit,
  ) async {
    // Get current cart
    final cartsResult = await _getCartsUseCase(NoParams());
    if (cartsResult.isLeft()) {
      emit(ShopState.error(cartsResult.fold(
        (failure) => failure.message,
        (_) => 'Failed to get carts',
      )));
      return;
    }

    final carts = cartsResult.getOrElse((_) => []);
    if (carts.isEmpty) {
      emit(const ShopState.error('No cart found'));
      return;
    }

    final currentCart = carts.where((cart) => cart.userId == 1).isNotEmpty
        ? carts.firstWhere((cart) => cart.userId == 1)
        : null;
    
    if (currentCart == null) {
      emit(const ShopState.error('No cart found'));
      return;
    }

    if (event.quantity <= 0) {
      await _onRemoveFromCart(RemoveFromCart(event.productId.toString()), emit);
      add(const GetProducts());
      return;
    }

    final updatedProducts = currentCart.products.map((product) {
      if (product.productId == event.productId) {
        return CartProductEntity(
          productId: product.productId,
          quantity: event.quantity,
        );
      }
      return product;
    }).toList();

    final params = AddToCartParams(
      userId: currentCart.userId,
      date: DateTime.now().toIso8601String(),
      products: updatedProducts,
    );

    final result = await _addToCartUseCase(params);
    result.fold(
      (failure) => emit(ShopState.error(failure.message)),
      (cart) {
        emit(ShopState.cartUpdated(cart));
        add(const GetProducts());
      },
    );
  }

  // --- WISHLIST ---
  Future<void> _syncWishlistFromPrefs() async {
    final wishlist = await _getWishlistUseCase(NoParams());
    wishlist.fold(
      (failure) => _wishlist.clear(),
      (products) {
        _wishlist
          ..clear()
          ..addAll(products.map((e) => e.id.toString()));
      },
    );
  }

  Future<void> _onAddToWishlist(
    AddToWishlist event,
    Emitter<ShopState> emit,
  ) async {
    emit(const ShopState.loading());
    try {
      await _addToWishlistUseCase(event.id);
      await _syncWishlistFromPrefs();
      emit(const ShopState.wishlistUpdated());
      add(const GetWishlist());
    } catch (e) {
      emit(ShopState.error(e.toString()));
    }
  }

  Future<void> _onRemoveFromWishlist(
    RemoveFromWishlist event,
    Emitter<ShopState> emit,
  ) async {
    emit(const ShopState.loading());
    try {
      await _removeFromWishlistUseCase(event.id);
      await _syncWishlistFromPrefs();
      emit(const ShopState.wishlistUpdated());
      add(const GetWishlist());
    } catch (e) {
      emit(ShopState.error(e.toString()));
    }
  }

  Future<void> _onGetWishlist(
    GetWishlist event,
    Emitter<ShopState> emit,
  ) async {
    emit(const ShopState.loading());
    try {
      final products = await _getWishlistUseCase(NoParams());
      products.fold(
        (failure) => emit(ShopState.error(failure.message)),
        (products) {
          emit(ShopState.wishlistLoaded(products));
          _wishlist
            ..clear()
            ..addAll(products.map((e) => e.id.toString()));
        },
      );
    } catch (e) {
      emit(ShopState.error(e.toString()));
    }
  }

  bool isInWishlist(String productId) => _wishlist.contains(productId);

  Future<void> _onStarted(Started event, Emitter<ShopState> emit) async {
    await _onGetProducts(const GetProducts(), emit);
    await _onGetCarts(const GetCarts(), emit);
    await _onGetWishlist(const GetWishlist(), emit);
    await _syncWishlistFromPrefs();
  }
}
