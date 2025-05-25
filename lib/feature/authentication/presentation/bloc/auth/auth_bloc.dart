import 'package:bloc/bloc.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/feature/authentication/domain/params/sign_in_params.dart';
import 'package:fake_store/feature/authentication/domain/usecases/is_logged_in_usecase.dart';
import 'package:fake_store/feature/authentication/domain/usecases/logout_usecase.dart';
import 'package:fake_store/feature/authentication/domain/usecases/signin_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final LogoutUseCase _logoutUseCase;
  final IsLoggedInUsecase _isLoggedInUsecase;

  AuthBloc(this._signInUseCase, this._logoutUseCase, this._isLoggedInUsecase) : super(const AuthState.unauthenticated()) {
    on<AuthEvent>((event, emit) async {
      switch (event) {
        case Started():
          await _onAuthStarted(emit);
        case SignIn(:final params):
          await _onSignIn(params, emit);
        case SignOut():
          await _onSignOut(emit);
      }
    });
  }

  Future<void> _onAuthStarted(Emitter<AuthState> emit) async {
    print('AuthBloc: _onAuthStarted called');
    final result = await _isLoggedInUsecase(const NoParams());
    result.fold(
      (failure) {
        print('AuthBloc: _onAuthStarted failed: ${failure.message}');
        emit(AuthState.failure(message: failure.message));
      },
      (isLoggedIn) {
        print('AuthBloc: _onAuthStarted success, isLoggedIn: $isLoggedIn');
        if (isLoggedIn) {
          emit(const AuthState.authenticated());
        } else {
          emit(const AuthState.unauthenticated());
        }
      },
    );
  }

  Future<void> _onSignIn(SignInParams params, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _signInUseCase(params);
    result.fold(
      (failure) => emit(AuthState.failure(message: failure.message)),
      (_) => emit(const AuthState.authenticated()),
    );
  }

  Future<void> _onSignOut(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _logoutUseCase(const NoParams());
    result.fold(
      (failure) => emit(AuthState.failure(message: failure.message)),
      (_) => emit(const AuthState.unauthenticated()),
    );
  }
}
