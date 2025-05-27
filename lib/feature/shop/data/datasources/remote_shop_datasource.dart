import 'package:fake_store/core/data/dummy_data.dart';
import 'package:injectable/injectable.dart';
import 'package:fake_store/feature/shop/data/models/product_model.dart';
import 'package:fake_store/feature/shop/data/models/cart_model.dart';

abstract interface class RemoteShopDataSource {
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
}

@Injectable(as: RemoteShopDataSource)
class RemoteShopDataSourceImpl implements RemoteShopDataSource {
  @override
  Future<List<ProductModel>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return productsData
        .map((json) => ProductModel.fromJson(json))
        .toList();
  }

  @override
  Future<ProductModel> getProduct(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final product = productsData.firstWhere(
      (product) => product['id'].toString() == id,
      orElse: () => throw Exception('Product not found'),
    );
    return ProductModel.fromJson(product);
  }

  @override
  Future<List<CartModel>> getCarts() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return cartsData
        .map((json) => CartModel.fromJson(json))
        .toList();
  }

  @override
  Future<CartModel> getCart(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final cart = cartsData.firstWhere(
      (cart) => cart['id'].toString() == id,
      orElse: () => throw Exception('Cart not found'),
    );
    return CartModel.fromJson(cart);
  }

  @override
  Future<CartModel> addToCart({
    required int userId,
    required String date,
    required List<CartProductModel> products,
  }) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return CartModel.fromJson({
      "id": DateTime.now().millisecondsSinceEpoch,
      "userId": userId,
      "date": date,
      "products": products.map((e) => {
        "productId": e.productId,
        "quantity": e.quantity,
      }).toList(),
    });
  }

  @override
  Future<void> removeFromCart(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
  }
}