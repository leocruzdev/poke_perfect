import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/di/injection_modules.config.dart';
import 'package:poke_perfect/platform/navigator/page_navigator.dart';

@InjectableInit(initializerName: r'$initAllModules')
Future<GetIt> configureAllDependencies(
  GetIt getIt,
  String environment,
  List<PageNavigator> pageNavigators,
) async {
  getIt.registerSingleton<List<PageNavigator>>(pageNavigators);
  return getIt.$initAllModules(environment: environment);
}
