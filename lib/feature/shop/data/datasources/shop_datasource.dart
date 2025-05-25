import 'package:fake_store/core/network/dio_client.dart';
import 'package:injectable/injectable.dart';
import 'package:fake_store/feature/shop/data/models/product_model.dart';
import 'package:fake_store/feature/shop/data/models/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class ShopDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProduct(String id);
  Future<List<CartModel>> getCarts();
  Future<CartModel> getCart(String id);
  Future<CartModel> addToCart({
    required int userId,
    required String date,
    required List<CartProductModel> products,
  });
  Future<void> removeFromCart(String id);
  Future<void> addToWishlist(String id);
  Future<void> removeFromWishlist(String id);
  Future<List<ProductModel>> getWishlist();
}

@Injectable(as: ShopDataSource)
class ShopDataSourceImpl implements ShopDataSource {
  final DioClient _dioClient;
  final SharedPreferences _prefs;
  static const _wishlistKey = 'wishlist';

  ShopDataSourceImpl(this._dioClient, this._prefs);

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await _dioClient.get('products');
    return (response.data as List)
        .map((json) => ProductModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<ProductModel> getProduct(String id) async {
    final response = await _dioClient.get('products/$id');
    return ProductModel.fromJson(response.data);
  }

  @override
  Future<List<CartModel>> getCarts() async {
    final response = await _dioClient.get('carts');
    return (response.data as List)
        .map((json) => CartModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<CartModel> getCart(String id) async {
    final response = await _dioClient.get('carts/$id');
    return CartModel.fromJson(response.data);
  }

  @override
  Future<CartModel> addToCart({
    required int userId,
    required String date,
    required List<CartProductModel> products,
  }) async {
    final response = await _dioClient.post(
      'carts',
      data: {
        "userId": userId,
        "date": date,
        "products": products.map((e) => {
          "productId": e.productId,
          "quantity": e.quantity,
        }).toList(),
      },
    );
    return CartModel.fromJson(response.data);
  }

  @override
  Future<void> removeFromCart(String id) async {
    await _dioClient.delete('carts/$id');
  }

  @override
  Future<void> addToWishlist(String id) async {
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    if (!wishlist.contains(id)) {
      wishlist.add(id);
      await _prefs.setStringList(_wishlistKey, wishlist);
    }
  }

  @override
  Future<void> removeFromWishlist(String id) async {
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    wishlist.remove(id);
    await _prefs.setStringList(_wishlistKey, wishlist);
  }
  
  @override
  Future<List<ProductModel>> getWishlist() async {
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    return Future.wait(wishlist.map((id) => getProduct(id)));
  }
}