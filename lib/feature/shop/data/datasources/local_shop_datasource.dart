import 'dart:developer';

import 'package:fake_store/core/data/dummy_data.dart';
import 'package:fake_store/feature/shop/data/models/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract interface class LocalShopDataSource {
  Future<void> addToWishlist(String id);
  Future<void> removeFromWishlist(String id);
  Future<List<ProductModel>> getWishlist();
  Future<bool> isInWishlist(String id);
}

@Injectable(as: LocalShopDataSource)
class LocalShopDataSourceImpl implements LocalShopDataSource {
  final SharedPreferences _prefs;
  static const _wishlistKey = 'wishlist';

  LocalShopDataSourceImpl(this._prefs);

  @override
  Future<void> addToWishlist(String id) async {
    log('addToWishlist from local: $id');
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    if (!wishlist.contains(id)) {
      wishlist.add(id);
      await _prefs.setStringList(_wishlistKey, wishlist);
    }
  }

  @override
  Future<void> removeFromWishlist(String id) async {
    log('removeFromWishlist from local: $id');
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    wishlist.remove(id);
    await _prefs.setStringList(_wishlistKey, wishlist);
  }

  @override
  Future<List<ProductModel>> getWishlist() async {
    log('getWishlist from local');
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    final wishlistProducts = wishlist
        .map((id) => productsData.firstWhere(
              (product) => product['id'].toString() == id,
              orElse: () => throw Exception('Product not found'),
            ))
        .map((json) => ProductModel.fromJson(json))
        .toList();
    log('wishlistProducts: $wishlistProducts');
    return wishlistProducts;
  }

  @override
  Future<bool> isInWishlist(String id) async {
    final wishlist = _prefs.getStringList(_wishlistKey) ?? [];
    return wishlist.contains(id);
  }
}