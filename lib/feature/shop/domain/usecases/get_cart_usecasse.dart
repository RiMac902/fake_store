import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase implements UseCase<CartEntity, String> {
  final ShopRepository _shopRepository;

  GetCartUseCase(this._shopRepository);

  @override
  Future<Either<Failure, CartEntity>> call(String id) async {
    try {
      final cart = await _shopRepository.getCart(id);
      return Right(cart);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}