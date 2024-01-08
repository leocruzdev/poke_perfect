import 'package:poke_perfect/detail/presentation/page/detail_page.dart';
import 'package:poke_perfect/home/presentation/page/home_page.dart';
import 'package:poke_perfect/platform/navigator/page_navigator.dart';
import 'package:poke_perfect/platform/navigator/routes.dart';

final List<PageNavigator> routes = [
  PageNavigator(
    router: Routes.home,
    builder: (_, __) => const HomePage(),
  ),
  PageNavigator(
    router: Routes.pokemonDetails,
    builder: (_, __) => const DetailPage(),
  ),
];
