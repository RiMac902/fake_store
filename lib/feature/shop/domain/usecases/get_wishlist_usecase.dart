import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/entities/product_entity.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWishlistUseCase implements UseCase<List<ProductEntity>, NoParams> {
  final ShopRepository _shopRepository;

  GetWishlistUseCase(this._shopRepository);

  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) async {
    try {
      final wishlist = await _shopRepository.getWishlist();
      return Right(wishlist);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}