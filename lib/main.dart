import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:media_kit/media_kit.dart';
import 'package:spattia/app_router_navigation.dart';
import 'package:spattia/view/constants/dark_theme.dart';
import 'package:spattia/view/constants/light_theme.dart';
import 'package:spattia/view_model/cubit/bloc_observer.dart';
import 'package:spattia/view_model/cubit/language/language_cubit.dart';
import 'package:spattia/view_model/cubit/theme/theme_cubit.dart';
import 'package:spattia/view_model/database/local/cache_helper.dart';
import 'package:spattia/view_model/database/network/dio_helper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await DioHelper.init();
  Bloc.observer = MyBlocObserver();
  // Initialize Media Player
  MediaKit.ensureInitialized();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => LanguageCubit(),
        ),
      ],
      child: MyApp(
        appRouter: AppRouterNavigation(),
      ),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp({super.key, required this.appRouter});

  AppRouterNavigation appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    LanguageCubit languageCubit = BlocProvider.of<LanguageCubit>(context, listen: true);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: Locale(languageCubit.local),
        theme: lightTheme(context),
        darkTheme: darkTheme(context),
        themeMode: themeCubit.isDark ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: widget.appRouter.routerNavigation,
      ),
    );
  }
}
