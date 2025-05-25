import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/entities/cart_entity.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartsUseCase implements UseCase<List<CartEntity>, NoParams> {
  final ShopRepository _shopRepository;

  GetCartsUseCase(this._shopRepository);

  @override
  Future<Either<Failure, List<CartEntity>>> call(NoParams params) async {
    try {
      final carts = await _shopRepository.getCarts();
      return Right(carts);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}