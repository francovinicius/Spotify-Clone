import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'my_app.dart';

Future main() async {

  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  runApp(const MyApp());


}



