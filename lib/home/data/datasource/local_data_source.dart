import 'dart:typed_data';

import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';

abstract class LocalDataSource {
  Future<PokemonListModel?> getPokemons();
  Future<void> savePokemons(PokemonListModel pokemons);
  Future<Uint8List?> getImage(String url);
  Future<void> saveImage(String url, Uint8List imageData);
}

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final Box<PokemonListModel> pokemonListBox = GetIt.I<Box<PokemonListModel>>();
  final Box<dynamic> imageBox =
      GetIt.I.get<Box<dynamic>>(instanceName: 'ImageBox');

  @override
  Future<PokemonListModel?> getPokemons() async {
    try {
      return pokemonListBox.get('pokemons');
    } catch (e) {
      throw Exception('Error reading pokemons from Hive: $e');
    }
  }

  @override
  Future<void> savePokemons(PokemonListModel pokemons) async {
    try {
      await pokemonListBox.put('pokemons', pokemons);
    } catch (e) {
      throw Exception('Error saving pokemons to Hive: $e');
    }
  }

  @override
  Future<Uint8List?> getImage(String url) async {
    return imageBox.get(url);
  }

  @override
  Future<void> saveImage(String url, Uint8List imageData) async {
    await imageBox.put(url, imageData);
  }
}
