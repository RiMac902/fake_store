import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/shop/domain/repositories/shop_repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveFromCartUseCase implements UseCase<void, String> {
  final ShopRepository _shopRepository;

  RemoveFromCartUseCase(this._shopRepository);

  @override
  Future<Either<Failure, void>> call(String id) async {
    try {
      await _shopRepository.removeFromCart(id);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}