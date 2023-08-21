

import 'package:deraya_application/bloc_observer.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/data/api/my_api.dart';
import 'package:deraya_application/data/hive/hive.dart';
import 'package:deraya_application/presentation/screens/home/category_screen.dart';
import 'package:deraya_application/presentation/layout/home_layout.dart';
import 'package:deraya_application/presentation/screens/home/home_screen.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:deraya_application/presentation/screens/search/filtter_screen.dart';
import 'package:deraya_application/presentation/screens/splash_screen/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await EasyLocalization.ensureInitialized();
  setUpLocator();
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  runApp(
    EasyLocalization(
        startLocale: Locale('ar', "EG"),
        supportedLocales: const [
          Locale('ar', "EG"),
          Locale('en', "US"),
        ],
        path: 'assets/language',

        saveLocale: true,
        // fallbackLocale: const Locale('ar', "EG"),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => AppCubit(),
    //   child: BlocConsumer<AppCubit, AppState>(
    //     listener: (context, state) {
    //       // TODO: implement listener
    //     },
    //     builder: (context, state) {
    //       Utils.rebuildAllChildren(context);
    //       return ScreenUtilInit(
    //           designSize: const Size(390, 844),
    //           minTextAdapt: true,
    //           splitScreenMode: true,
    //           builder: (context, screenUtil) {
    //             return MaterialApp(
    //                 localizationsDelegates: context.localizationDelegates,
    //                 supportedLocales: context.supportedLocales,
    //                 locale: context.locale,
    //                 debugShowCheckedModeBanner: false,
    //                 navigatorObservers: [BotToastNavigatorObserver()],
    //                 //2. registered route observer
    //
    //                 theme: lightTheme(),
    //                 home: const SplashScreen());
    //           });
    //     },
    //   ),
    // );

    return ScreenUtilInit(
        designSize: const Size(428, 924),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            locale: context.locale,
            // builder: FlutterSmartDialog.init(),

            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            debugShowCheckedModeBanner: false,

            title: 'Deraya',
            theme: ThemeData(
              fontFamily: "cairo",
              primaryColor: AppColors.primary,
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                elevation: 0,
                centerTitle: true,
                actionsIconTheme: IconThemeData(
                  color: AppColors.primary,

                ),
                iconTheme: IconThemeData(
                  color: AppColors.primary,


                )
                // color: ColorsManger.primary
              )

            ),

            home: SplashScreen(),

          );
        });
  }
}
final serviceLocator = GetIt.instance;
setUpLocator() async {
  serviceLocator.registerSingleton<DioHelper>(DioHelper());
  serviceLocator.registerLazySingleton(() => DataManager());
}