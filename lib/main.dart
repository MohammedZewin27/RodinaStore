import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rodinakids/screens/homeLayoutScreen/homeLayoutScreen.dart';
import 'package:rodinakids/screens/loginScreen/loginScreen.dart';
import 'package:rodinakids/screens/splash_screen/SplashScreen.dart';
import 'package:rodinakids/style/theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'music app',

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],


      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkThem,

      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context) => const SplashScreen(),
        HomeLayoutScreen.routeName:(context) => const HomeLayoutScreen(),
        LoginScreen.routeName:(context) =>  const LoginScreen(),

      },
    );
  }
}
