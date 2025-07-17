import 'package:coinin/core/theme/theme_dark.dart';
import 'package:coinin/core/theme/theme_light.dart';
import 'package:coinin/di/storage_injector.dart';
import 'package:coinin/generated/l10n.dart';
import 'package:coinin/presentation/main_nav_page/children/home_page/bloc/home_page_cubit.dart';
import 'package:coinin/presentation/router/app_router.dart';
import 'package:coinin/services/theme_service/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await configurePresentationStorages();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomePageCubit()),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            themeMode: state is ThemeChanged
                ? state.themeMode
                : ThemeMode.system,
            theme: ThemeLight.light,
            darkTheme: ThemeDark.dark,
            routerConfig: _appRouter.config(),
          );
        },
      ),
    );
  }
}
