import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poke_perfect/home/data/mappers/pokemon_list_mapper.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemon_detail.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemons.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_event.dart';
import 'package:poke_perfect/home/presentation/bloc/home_state.dart';

import '../../../shared.dart';

class MockGetAllPokemons extends Mock implements GetAllPokemons {}

class MockGetPokemonDetail extends Mock implements GetPokemonDetail {}

void main() {
  late MockGetAllPokemons mockGetAllPokemons;
  late MockGetPokemonDetail mockGetPokemonDetail;
  late HomeBloc homeBloc;

  setUp(() {
    GetIt.I.reset();
    mockGetAllPokemons = MockGetAllPokemons();
    mockGetPokemonDetail = MockGetPokemonDetail();

    GetIt.I.registerLazySingleton<GetAllPokemons>(() => mockGetAllPokemons);
    GetIt.I.registerLazySingleton<GetPokemonDetail>(() => mockGetPokemonDetail);

    homeBloc = HomeBloc();
  });

  tearDown(() {
    homeBloc.close();
  });

  group('HomeBloc Tests', () {
    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoading, HomeError] when FetchPokemons is added and fails',
      build: () => homeBloc,
      act: (bloc) {
        when(() => mockGetAllPokemons())
            .thenThrow(Exception('Failed to fetch'));
        bloc.add(FetchPokemons());
      },
      expect: () => [isA<HomeLoading>(), isA<HomeError>()],
    );
    blocTest<HomeBloc, HomeState>(
      'emits [HomeLoading, HomeLoaded] when FetchPokemons is added and succeeds',
      build: () => homeBloc,
      act: (bloc) async {
        when(() => mockGetAllPokemons())
            .thenAnswer((_) async => fakePokemonListModel.toDomain());

        bloc.add(FetchPokemons());
        await expectLater(
          bloc.stream,
          emitsInOrder([isA<HomeLoading>(), isA<HomeLoaded>()]),
        );
      },
      expect: () => [isA<HomeLoading>(), isA<HomeLoaded>()],
    );

    blocTest<HomeBloc, HomeState>(
      'emits HomeLoaded when LoadNextPagePokemons is added and succeeds',
      build: () => homeBloc,
      act: (bloc) {
        homeBloc.nextUrl = 'http://fakeapi.com/pokemon?page=2';
        when(() => mockGetAllPokemons(url: 'http://fakeapi.com/pokemon?page=2'))
            .thenAnswer((_) async => fakePokemonList);
        bloc.add(LoadNextPagePokemons());
      },
      expect: () => [isA<HomeLoaded>()],
    );

    blocTest<HomeBloc, HomeState>(
      'emits HomeLoaded when LoadImagePokemon is added and succeeds',
      build: () => homeBloc,
      act: (bloc) {
        const imageUrl = 'http://fakeapi.com/pokemon/1';
        when(() => mockGetPokemonDetail(imageUrl))
            .thenAnswer((_) async => fakePokemonDetail);
        bloc.add(LoadImagePokemon(imageUrl));
      },
      expect: () => [isA<HomeLoaded>()],
    );
  });
}
