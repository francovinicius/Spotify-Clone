import 'dart:math';

import 'package:flutter/material.dart';

class CardBuscar extends StatelessWidget {
  final Color color;
  final String text;
  final String imagePath;

  CardBuscar({
    required this.color,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80.0),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(top: 26.0, right: 10.0),

            child: Transform.rotate(
              angle: 15 * (pi / 180),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagePath,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
