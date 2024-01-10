import 'package:flutter_test/flutter_test.dart';
import 'package:poke_perfect/home/data/mappers/pokemon_list_mapper.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/shared_model/pokemon_detail_data.dart';

void main() {
  group('PokemonListModelMapper', () {
    test('deve mapear corretamente de PokemonListModel para PokemonList', () {
      // Configuração
      const pokemonItem = PokemonItem(name: 'TestPokemon', url: 'testUrl');
      final pokemonListModel = PokemonListModel(
        count: 1,
        next: 'nextUrl',
        previous: 'previousUrl',
        results: [pokemonItem],
      );

      // Ação
      final pokemonList = pokemonListModel.toDomain();

      // Verificações
      expect(pokemonList.count, pokemonListModel.count);
      expect(pokemonList.next, pokemonListModel.next);
      expect(pokemonList.previous, pokemonListModel.previous);

      // Verificar se a lista de resultados é mapeada corretamente
      expect(pokemonList.pokemons.length, pokemonListModel.results.length);
      for (var i = 0; i < pokemonListModel.results.length; i++) {
        expect(pokemonList.pokemons[i].name, pokemonListModel.results[i].name);
        expect(pokemonList.pokemons[i].url, pokemonListModel.results[i].url);
      }
    });
  });
}
