import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductUseCase implements UseCase<ProductEntity, String> {
  final ShopRepository _shopRepository;

  GetProductUseCase(this._shopRepository);

  @override
  Future<Either<Failure, ProductEntity>> call(String id) async {
    try {
      final product = await _shopRepository.getProduct(id);
      return Right(product);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}