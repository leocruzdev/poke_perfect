import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/di/injection_modules.config.dart';

@InjectableInit(initializerName: r'$initAllModules')
Future<GetIt> configureAllDependencies(
  GetIt getIt,
  String environment,
) async {
  return getIt.$initAllModules(environment: environment);
}
