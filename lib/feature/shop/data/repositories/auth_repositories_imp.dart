import 'package:fake_store/feature/shop/data/datasources/remote_shop_datasource.dart';
import 'package:fake_store/feature/shop/data/datasources/local_shop_datasource.dart';
import 'package:fake_store/feature/shop/data/models/cart_model.dart';
import 'package:fake_store/feature/shop/data/models/product_model.dart';
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ShopRepository)
class ShopRepositoryImpl implements ShopRepository {
  final RemoteShopDataSource _remoteShopDataSource;
  final LocalShopDataSource _localShopDataSource;

  ShopRepositoryImpl(this._remoteShopDataSource, this._localShopDataSource);

  @override
  Future<CartEntity> addToCart({required int userId, required String date, required List<CartProductEntity> products}) async {
    final cartModel = await _remoteShopDataSource.addToCart(
      userId: userId,
      date: date,
      products: products.map((e) => CartProductModel(
        productId: e.productId,
        quantity: e.quantity,
      )).toList(),
    );
    return cartModel.toEntity();
  }

  @override
  Future<void> addToWishlist(String id) async {
    return await _localShopDataSource.addToWishlist(id);
  }

  @override
  Future<CartEntity> getCart(String id) async {
    final cartModel = await _remoteShopDataSource.getCart(id);
    return cartModel.toEntity();
  }

  @override
  Future<List<CartEntity>> getCarts() async {
    final cartModels = await _remoteShopDataSource.getCarts();
    return cartModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<ProductEntity> getProduct(String id) async {
    final productModel = await _remoteShopDataSource.getProduct(id);
    return productModel.toEntity();
  }

  @override
  Future<List<ProductEntity>> getProducts() async {
    final productModels = await _remoteShopDataSource.getProducts();
    return productModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<List<ProductEntity>> getWishlist() async {
    final productModels = await _localShopDataSource.getWishlist();
    return productModels.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> removeFromCart(String id) async {
    return await _remoteShopDataSource.removeFromCart(id);
  }

  @override
  Future<void> removeFromWishlist(String id) async {
    return await _localShopDataSource.removeFromWishlist(id);
  }
}