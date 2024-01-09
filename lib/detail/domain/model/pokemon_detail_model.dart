class PokemonDetail {
  final int id;
  final String name;
  final int? height;
  final List<String> types;
  final String imageUrl;
  final List<String> abilities;
  final List<String> forms;
  final List<String> moves;
  final Map<String, int> stats;

  PokemonDetail({
    required this.id,
    required this.name,
    required this.height,
    required this.types,
    required this.imageUrl,
    required this.abilities,
    required this.forms,
    required this.moves,
    required this.stats,
  });
}
