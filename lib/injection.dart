import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:poke_perfect/home/di/injection_modules.dart';

Future<void> configureDependencies() async {
  final GetIt getIt = GetIt.instance;
  const String environment = Environment.prod;

  await configureAllDependencies(
    getIt,
    environment,
  );
}
