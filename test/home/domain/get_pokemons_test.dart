import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/model/pokemon_list_model.dart';
import 'package:poke_perfect/home/domain/pokemon_repository.dart';
import 'package:poke_perfect/home/domain/usecase/get_pokemons.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_data.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

class FakePokemonList extends Fake implements PokemonList {}

class FakePokemonListModel extends Fake implements PokemonListModel {}

void main() {
  late GetAllPokemons getAllPokemons;
  late MockPokemonRepository mockPokemonRepository;

  setUpAll(() {
    registerFallbackValue(FakePokemonList());
  });

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    getAllPokemons = GetAllPokemons(mockPokemonRepository);
  });

  group('GetAllPokemons', () {
    final testPokemonListModel = PokemonListModel(
      count: 10,
      next: 'next_url',
      previous: 'previous_url',
      results: [const PokemonItem(name: 'Test Pokemon', url: 'test_url')],
    );

    test('Deve retornar uma lista de Pokémons quando não há erro', () async {
      when(() => mockPokemonRepository.getAllPokemons(
              limit: any(named: 'limit'), offset: any(named: 'offset')))
          .thenAnswer((_) async => testPokemonListModel);

      final result = await getAllPokemons(limit: 20, offset: 0);

      expect(result.count, equals(testPokemonListModel.count));
      expect(result.next, equals(testPokemonListModel.next));
      expect(result.previous, equals(testPokemonListModel.previous));

      for (var i = 0; i < result.pokemons.length; i++) {
        expect(result.pokemons[i].name,
            equals(testPokemonListModel.results[i].name));
        expect(result.pokemons[i].url,
            equals(testPokemonListModel.results[i].url));
      }

      verify(() => mockPokemonRepository.getAllPokemons(limit: 20, offset: 0))
          .called(1);
    });

    test('Deve lançar uma exceção quando o repositório falhar', () {
      when(() => mockPokemonRepository.getAllPokemons(
              limit: any(named: 'limit'), offset: any(named: 'offset')))
          .thenThrow(Exception('Failed to fetch'));

      expect(() async => getAllPokemons(limit: 20, offset: 0),
          throwsA(isInstanceOf<Exception>()));
    });
  });
}
