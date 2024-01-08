import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poke_perfect/home/data/model/pokemon_item.dart';
import 'package:poke_perfect/home/data/model/pokemon_list_model.dart';

@module
abstract class HiveModule {
  static bool _isInitialized = false;

  @preResolve
  Future<Box<PokemonListModel>> providePokemonListBox() async {
    await _initializeHive();
    Hive.registerAdapter(PokemonItemAdapter());
    Hive.registerAdapter(PokemonListModelAdapter());
    return Hive.openBox<PokemonListModel>('pokemonList');
  }

  Future<void> _initializeHive() async {
    if (!_isInitialized) {
      final appDocumentDir = await getApplicationDocumentsDirectory();
      await Hive.initFlutter(appDocumentDir.path);
      _isInitialized = true;
    }
  }

  @preResolve
  @Named('ImageBox')
  Future<Box<dynamic>> provideImageBox() async {
    await _initializeHive();
    return Hive.openBox('imageBox');
  }
}
