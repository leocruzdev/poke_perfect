import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';
import 'package:poke_perfect/logger_service.dart';

abstract class LocalDataSource {
  Future<PokemonListModel?> getPokemons();
  Future<void> savePokemons(PokemonListModel pokemons);
}

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final Box<PokemonListModel> pokemonListBox = GetIt.I<Box<PokemonListModel>>();

  @override
  Future<PokemonListModel?> getPokemons() async {
    try {
      LoggerService.logDebug('Attempting to read pokemons from local cache');
      final data = pokemonListBox.get('pokemons');
      if (data != null) {
        LoggerService.logDebug('Pokemons retrieved from local cache');
      } else {
        LoggerService.logDebug('No pokemons found in local cache');
      }
      return data;
    } catch (e) {
      LoggerService.logDebug('Error reading pokemons from Hive: $e');
      throw Exception('Error reading pokemons from Hive: $e');
    }
  }

  @override
  Future<void> savePokemons(PokemonListModel pokemons) async {
    try {
      LoggerService.logDebug('Attempting to save pokemons to local cache');
      await pokemonListBox.put('pokemons', pokemons);
      LoggerService.logDebug('Pokemons successfully saved to local cache');
    } catch (e) {
      LoggerService.logDebug('Error saving pokemons to Hive: $e');
      throw Exception('Error saving pokemons to Hive: $e');
    }
  }
}
