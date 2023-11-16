import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xff121212),
        body: Center(
          child: Text(
            'Home Page',
            style: TextStyle(color: Colors.white),
          ),
        )
    );
  }
}
