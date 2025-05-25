// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'core/modules/modules.dart' as _i48;
import 'core/network/dio_client.dart' as _i45;
import 'feature/authentication/data/datasources/auth_datasource.dart' as _i775;
import 'feature/authentication/data/repositories/auth_repositories_impl.dart'
    as _i1008;
import 'feature/authentication/domain/repositories/auth_repository.dart'
    as _i209;
import 'feature/authentication/domain/usecases/is_logged_in_usecase.dart'
    as _i550;
import 'feature/authentication/domain/usecases/logout_usecase.dart' as _i14;
import 'feature/authentication/domain/usecases/signin_usecase.dart' as _i477;
import 'feature/authentication/presentation/bloc/auth/auth_bloc.dart' as _i561;
import 'feature/shop/data/datasources/shop_datasource.dart' as _i185;
import 'feature/shop/data/repositories/auth_repositories_imp.dart' as _i147;
import 'feature/shop/domain/repositories/shop_repositories.dart' as _i1036;
import 'feature/shop/domain/usecases/add_to_cart_usecase.dart' as _i360;
import 'feature/shop/domain/usecases/add_to_wishlist_usecase.dart' as _i201;
import 'feature/shop/domain/usecases/get_cart_usecasse.dart' as _i415;
import 'feature/shop/domain/usecases/get_carts_usecase.dart' as _i649;
import 'feature/shop/domain/usecases/get_product_usecase.dart' as _i601;
import 'feature/shop/domain/usecases/get_products_usecase.dart' as _i815;
import 'feature/shop/domain/usecases/get_wishlist_usecase.dart' as _i158;
import 'feature/shop/domain/usecases/remove_from_wishlist.dart' as _i386;
import 'feature/shop/domain/usecases/remove_rom_cart_usecase.dart' as _i428;
import 'feature/shop/presentation/bloc/shop/shop_bloc.dart' as _i1011;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final modules = _$Modules();
    gh.singletonAsync<_i460.SharedPreferences>(() => modules.sharedPreferences);
    gh.singleton<_i558.FlutterSecureStorage>(() => modules.secureStorage);
    gh.singleton<_i45.DioClient>(
      () => _i45.DioClient(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factoryAsync<_i185.ShopDataSource>(
      () async => _i185.ShopDataSourceImpl(
        gh<_i45.DioClient>(),
        await getAsync<_i460.SharedPreferences>(),
      ),
    );
    gh.factory<_i775.AuthDataSource>(
      () => _i775.AuthDataSourceImpl(
        gh<_i45.DioClient>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.factoryAsync<_i1036.ShopRepository>(
      () async =>
          _i147.ShopRepositoryImpl(await getAsync<_i185.ShopDataSource>()),
    );
    gh.factory<_i209.AuthRepository>(
      () => _i1008.AuthRepositoryImpl(gh<_i775.AuthDataSource>()),
    );
    gh.factoryAsync<_i815.GetProductsUseCase>(
      () async =>
          _i815.GetProductsUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i360.AddToCartUseCase>(
      () async =>
          _i360.AddToCartUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i158.GetWishlistUseCase>(
      () async =>
          _i158.GetWishlistUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i415.GetCartUseCase>(
      () async => _i415.GetCartUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i649.GetCartsUseCase>(
      () async =>
          _i649.GetCartsUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i428.RemoveFromCartUseCase>(
      () async =>
          _i428.RemoveFromCartUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i601.GetProductUseCase>(
      () async =>
          _i601.GetProductUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.factoryAsync<_i386.RemoveFromWishlistUseCase>(
      () async => _i386.RemoveFromWishlistUseCase(
        await getAsync<_i1036.ShopRepository>(),
      ),
    );
    gh.factoryAsync<_i201.AddToWishlistUseCase>(
      () async =>
          _i201.AddToWishlistUseCase(await getAsync<_i1036.ShopRepository>()),
    );
    gh.singletonAsync<_i1011.ShopBloc>(
      () async => _i1011.ShopBloc(
        await getAsync<_i815.GetProductsUseCase>(),
        await getAsync<_i601.GetProductUseCase>(),
        await getAsync<_i649.GetCartsUseCase>(),
        await getAsync<_i415.GetCartUseCase>(),
        await getAsync<_i360.AddToCartUseCase>(),
        await getAsync<_i428.RemoveFromCartUseCase>(),
        await getAsync<_i201.AddToWishlistUseCase>(),
        await getAsync<_i386.RemoveFromWishlistUseCase>(),
        await getAsync<_i158.GetWishlistUseCase>(),
      ),
    );
    gh.factory<_i14.LogoutUseCase>(
      () => _i14.LogoutUseCase(gh<_i209.AuthRepository>()),
    );
    gh.factory<_i477.SignInUseCase>(
      () => _i477.SignInUseCase(gh<_i209.AuthRepository>()),
    );
    gh.factory<_i550.IsLoggedInUsecase>(
      () => _i550.IsLoggedInUsecase(gh<_i209.AuthRepository>()),
    );
    gh.singleton<_i561.AuthBloc>(
      () => _i561.AuthBloc(
        gh<_i477.SignInUseCase>(),
        gh<_i14.LogoutUseCase>(),
        gh<_i550.IsLoggedInUsecase>(),
      ),
    );
    return this;
  }
}

class _$Modules extends _i48.Modules {}
