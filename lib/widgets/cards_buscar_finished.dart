import 'package:flutter/material.dart';

import 'card_buscar.dart';

class CardsBuscarFinished extends StatelessWidget {
  const CardsBuscarFinished({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBuscar(
              color: Colors.lightBlue,
              text: "Podcasts",
              imagePath: "assets/destaques/destaque_0.png",
            ),
            CardBuscar(
              color: Colors.yellow,
              text: "Hits",
              imagePath: "assets/destaques/destaque_2.png",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBuscar(
              color: Colors.deepOrangeAccent,
              text: "Podcasts",
              imagePath: "assets/destaques/destaque_1.png",
            ),
            CardBuscar(
              color: Colors.deepPurple,
              text: "Hits",
              imagePath: "assets/destaques/destaque_3.png",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBuscar(
              color: Colors.green,
              text: "Podcasts",
              imagePath: "assets/destaques/destaque_0.png",
            ),
            CardBuscar(
              color: Colors.brown,
              text: "Hits",
              imagePath: "assets/destaques/destaque_3.png",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBuscar(
              color: Colors.pinkAccent,
              text: "Podcasts",
              imagePath: "assets/destaques/destaque_1.png",
            ),
            CardBuscar(
              color: Colors.yellow,
              text: "Hits",
              imagePath: "assets/destaques/destaque_2.png",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBuscar(
              color: Colors.cyanAccent,
              text: "Podcasts",
              imagePath: "assets/destaques/destaque_0.png",
            ),
            CardBuscar(
              color: Colors.teal,
              text: "Hits",
              imagePath: "assets/destaques/destaque_3.png",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardBuscar(
              color: Colors.redAccent,
              text: "Podcasts",
              imagePath: "assets/destaques/destaque_1.png",
            ),
            CardBuscar(
              color: Colors.deepPurple,
              text: "Hits",
              imagePath: "assets/destaques/destaque_2.png",
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}