import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/module/auth/login.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
        logo: Image.asset('assets/icons/logo.png'),
        logoWidth: 100,
        backgroundColor: const Color(0xff121212),
        navigator: const LoginPage(),
        durationInSeconds: 2,
    );
  }
}