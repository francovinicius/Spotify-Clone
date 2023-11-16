import 'package:flutter/material.dart';

class Dados extends StatelessWidget {
  const Dados({
    super.key,
  });


  @override

  Widget build(BuildContext context) {

    return Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Digite seu e-mail',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Color(0xff414141),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '******',
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Color(0xff414141),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]
    );
  }
}