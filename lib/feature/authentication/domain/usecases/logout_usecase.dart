import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase implements UseCase<void, NoParams> {
  final AuthRepository _authRepository;

  LogoutUseCase(this._authRepository);

  @override
  Future<Either<Failure, void>> call(NoParams param) async {
    try {
      await _authRepository.signOut();
      return const Right(null);
    } on Exception catch (e) {
      return Left(AuthFailure(e.toString()));
    }
  }
}