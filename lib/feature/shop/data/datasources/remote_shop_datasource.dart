import 'package:fake_store/core/network/dio_client.dart';
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
  final DioClient _dioClient;

  RemoteShopDataSourceImpl(this._dioClient);

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await _dioClient.get('products');
    final data = response.data as List;
    return data.map((json) => ProductModel.fromJson(json)).toList();
  }

  @override
  Future<ProductModel> getProduct(String id) async {
    final response = await _dioClient.get('products/$id');
    return ProductModel.fromJson(response.data);
  }

  @override
  Future<List<CartModel>> getCarts() async {
    final response = await _dioClient.get('carts');
    final data = response.data as List;
    return data.map((json) => CartModel.fromJson(json)).toList();
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
    final response = await _dioClient.post('carts', data: {
      "userId": userId,
      "date": date,
      "products": products.map((e) => {
        "productId": e.productId,
        "quantity": e.quantity,
      }).toList(),
    });
    return CartModel.fromJson(response.data);
  }

  @override
  Future<void> removeFromCart(String id) async {
    await _dioClient.delete('carts/$id');
  }
}