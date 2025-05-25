import 'package:fake_store/core/error/failures.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/authentication/domain/params/sign_in_params.dart';
import 'package:fake_store/feature/authentication/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@injectable
class SignInUseCase implements UseCase<void, SignInParams> {
  final AuthRepository _authRepository;

  SignInUseCase(this._authRepository);

  @override
  Future<Either<Failure, void>> call(SignInParams signInParams) async {
    try {
      await _authRepository.signIn(signInParams);
      return const Right(null);
    } on DioException catch (e) {
     String message = e.message ?? 'Unknown error';
    if (e.response?.statusCode == 401) {
      message = 'Invalid username or password';
    } else if (e.response?.data is Map && e.response?.data['message'] != null) {
      message = e.response!.data['message'].toString();
    }
    return Left(AuthFailure(message));
    }
  }
}
