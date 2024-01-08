enum Routes {
  home('/'),
  pokemonDetails('/pokemon-details');

  final String path;

  const Routes(this.path);

  @override
  String toString() => path;
}
