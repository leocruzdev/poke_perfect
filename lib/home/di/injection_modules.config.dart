// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:poke_perfect/home/data/datasource/local_data_source.dart'
    as _i6;
import 'package:poke_perfect/home/data/datasource/remote_data_source.dart'
    as _i9;
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart' as _i4;
import 'package:poke_perfect/home/data/repository/pokemon_repository_impl.dart'
    as _i11;
import 'package:poke_perfect/home/data/service/pokemon_api_service.dart' as _i7;
import 'package:poke_perfect/home/data/service/pokemon_api_service_impl.dart'
    as _i8;
import 'package:poke_perfect/home/di/dio_module.dart' as _i14;
import 'package:poke_perfect/home/di/hive_module.dart' as _i15;
import 'package:poke_perfect/home/domain/pokemon_repository.dart' as _i10;
import 'package:poke_perfect/home/domain/usecase/get_pokemon_image.dart'
    as _i13;
import 'package:poke_perfect/home/domain/usecase/get_pokemons.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> $initAllModules({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final hiveModule = _$HiveModule();
    final dioModule = _$DioModule();
    await gh.factoryAsync<_i3.Box<_i4.PokemonListModel>>(
      () => hiveModule.providePokemonListBox(),
      preResolve: true,
    );
    await gh.factoryAsync<_i3.Box<dynamic>>(
      () => hiveModule.provideImageBox(),
      instanceName: 'ImageBox',
      preResolve: true,
    );
    gh.singleton<_i5.Dio>(dioModule.dio);
    gh.factory<_i6.LocalDataSource>(() => _i6.LocalDataSourceImpl());
    gh.factory<_i7.PokemonApiService>(
        () => _i8.PokemonApiServiceImpl(gh<_i5.Dio>()));
    gh.factory<_i9.RemoteDataSource>(
        () => _i9.ApiRemoteDataSource(gh<_i7.PokemonApiService>()));
    gh.factory<_i10.PokemonRepository>(() => _i11.PokemonRepositoryImpl(
          gh<_i9.RemoteDataSource>(),
          gh<_i6.LocalDataSource>(),
        ));
    gh.factory<_i12.GetAllPokemons>(
        () => _i12.GetAllPokemons(gh<_i10.PokemonRepository>()));
    gh.factory<_i13.GetPokemonImage>(
        () => _i13.GetPokemonImage(gh<_i10.PokemonRepository>()));
    return this;
  }
}

class _$DioModule extends _i14.DioModule {}

class _$HiveModule extends _i15.HiveModule {}
