import 'package:flutter/material.dart';
import 'package:spotify_clone/module/auth/login.dart';
import 'package:spotify_clone/pages/home.dart';
import 'package:spotify_clone/pages/splash_screen.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SplashPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        // '/': (context) => SplashFuturePage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }

}
