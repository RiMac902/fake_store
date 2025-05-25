

import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class IsLoggedInUsecase implements UseCase<bool, NoParams> {
  final AuthRepository _authRepository;

  IsLoggedInUsecase(this._authRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    try {
      final result = await _authRepository.isLoggedIn();
      return Right(result);
    } on Exception catch (e) {
      return Left(AuthFailure(e.toString()));
    }
  }
}