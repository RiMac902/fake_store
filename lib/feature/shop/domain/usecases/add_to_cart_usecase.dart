import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

class AddToCartParams {
  final int userId;
  final String date;
  final List<CartProductEntity> products;

  AddToCartParams({
    required this.userId,
    required this.date,
    required this.products,
  });
}

@injectable
class AddToCartUseCase implements UseCase<CartEntity, AddToCartParams> {
  final ShopRepository _shopRepository;

  AddToCartUseCase(this._shopRepository);

  @override
  Future<Either<Failure, CartEntity>> call(AddToCartParams params) async {
    try {
      final cart = await _shopRepository.addToCart(
        userId: params.userId,
        date: params.date,
        products: params.products,
      );
      return Right(cart);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}