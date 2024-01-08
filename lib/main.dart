import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:poke_perfect/home/presentation/bloc/home_bloc.dart';
import 'package:poke_perfect/home/presentation/page/home_page.dart';
import 'package:poke_perfect/injection.dart';

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
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        title: 'PokéPerfect',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
