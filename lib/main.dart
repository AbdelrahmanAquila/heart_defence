import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:heart_defence/modules/homescreen.dart';
import 'package:heart_defence/shared/bloc_observer.dart';
import 'package:heart_defence/shared/colors.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  SystemUiOverlayStyle(statusBarColor: mainColor);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalCupertinoLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
        ],
        locale: const Locale(
            "ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
        title: 'Flutter Demo',

        //! Theme Here !\\
        theme: ThemeData(
          fontFamily: 'Cairo',
          primarySwatch: mainColor,
        ),
        home: const HomePage());
  }
}
