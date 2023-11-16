// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/rates/cubits/rates_cubit.dart' as _i9;
import '../../features/rates/repositories/irates_repository.dart' as _i4;
import '../../features/rates/repositories/rates_repository.dart' as _i5;
import '../../features/settings/cubits/settings_cubit.dart' as _i10;
import '../../features/settings/repositories/isettings_repository.dart' as _i7;
import '../../features/settings/repositories/settings_repository.dart' as _i8;
import 'dependency_configuring.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> initDependencies({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(registerModule.getHttpClient());
    gh.factory<_i4.IRatesRepository>(() => _i5.RatesRepository(gh<_i3.Dio>()));
    await gh.singletonAsync<_i6.SharedPreferences>(
      () => registerModule.getSharedPreferences(),
      preResolve: true,
    );
    await gh.singletonAsync<_i7.ISettingsRepository>(
      () {
        final i = _i8.SettingsRepository(gh<_i6.SharedPreferences>());
        return i.preloadSettingsAsync().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i9.RatesCubit>(() => _i9.RatesCubit(
          gh<_i4.IRatesRepository>(),
          gh<_i7.ISettingsRepository>(),
        ));
    gh.factory<_i10.SettingsCubit>(
        () => _i10.SettingsCubit(gh<_i7.ISettingsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
