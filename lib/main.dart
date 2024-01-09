import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:poke_perfect/detail/presentation/bloc/pokemon_detail_bloc.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/injection.dart';
import 'package:poke_perfect/platform/navigator/navigator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 16.0
    ..radius = 0.0
    ..indicatorType = EasyLoadingIndicatorType.threeBounce;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final navigator = GetIt.I<AppNavigator>();

    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(),
          ),
          BlocProvider(
            create: (context) => PokemonDetailBloc(),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          builder: EasyLoading.init(),
          routerConfig: navigator.getRouterConfig(),
          title: 'PokéPerfect',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        ),
      ),
    );
  }
}
