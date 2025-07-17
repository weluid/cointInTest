// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:coinin/data/database/local_storage.dart' as _i188;
import 'package:coinin/data/database/secure_storage.dart' as _i446;
import 'package:coinin/di/modules/dio_module.dart' as _i638;
import 'package:coinin/di/modules/global_key_module.dart' as _i98;
import 'package:coinin/di/modules/secure_pref_module.dart' as _i718;
import 'package:coinin/di/modules/share_pref_module.dart' as _i59;
import 'package:coinin/presentation/router/app_router.dart' as _i253;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter/cupertino.dart' as _i719;
import 'package:flutter/widgets.dart' as _i718;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final securePrefModule = _$SecurePrefModule();
    final globalKeyModule = _$GlobalKeyModule();
    final sharePrefModule = _$SharePrefModule();
    final registerModule = _$RegisterModule();
    gh.factory<_i558.FlutterSecureStorage>(() => securePrefModule.prefs());
    gh.factory<_i719.GlobalKey<_i719.NavigatorState>>(
      () => globalKeyModule.pref(),
    );
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharePrefModule.prefs(),
      preResolve: true,
    );
    gh.singleton<_i188.LocalStorage>(
      () => _i188.LocalStorage(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i446.SecureStorage>(
      () => _i446.SecureStorage(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i253.AppRouter>(
      () => _i253.AppRouter(gh<_i718.GlobalKey<_i718.NavigatorState>>()),
    );
    await gh.factoryAsync<_i361.Dio>(
      () => registerModule.pref(gh<_i446.SecureStorage>()),
      preResolve: true,
    );
    return this;
  }
}

class _$SecurePrefModule extends _i718.SecurePrefModule {}

class _$GlobalKeyModule extends _i98.GlobalKeyModule {}

class _$SharePrefModule extends _i59.SharePrefModule {}

class _$RegisterModule extends _i638.RegisterModule {}
