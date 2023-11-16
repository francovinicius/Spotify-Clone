import 'package:flutter/material.dart';

class Destaques extends StatelessWidget {
  const Destaques({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 70,
              width: 190,
              decoration: BoxDecoration(
                  color: const Color(0xff292929),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/destaques/destaque_0.png',
                    height: 100,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Top Brasil',
                      style:
                      TextStyle(color: Colors.white, fontSize: 18)),
                ],
              )),
          Container(
              height: 70,
              width: 190,
              decoration: BoxDecoration(
                  color: const Color(0xff292929),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/destaques/destaque_1.png',
                    height: 100,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Melhores\nEletrônicas',
                      style:
                      TextStyle(color: Colors.white, fontSize: 18)),
                ],
              )),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 70,
              width: 190,
              decoration: BoxDecoration(
                  color: const Color(0xff292929),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/destaques/destaque_2.png',
                    height: 100,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Top 50\nGlobal',
                      style:
                      TextStyle(color: Colors.white, fontSize: 18)),
                ],
              )),
          Container(
              height: 70,
              width: 190,
              decoration: BoxDecoration(
                  color: const Color(0xff292929),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/destaques/destaque_3.png',
                    height: 100,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Text('Top 2023\nSertaneja',
                      style:
                      TextStyle(color: Colors.white, fontSize: 18)),
                ],
              )),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 70,
              width: 190,
              decoration: BoxDecoration(
                  color: const Color(0xff292929),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/destaques/destaque_4.png',
                    height: 100,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('Desplugado',
                      style:
                      TextStyle(color: Colors.white, fontSize: 18)),
                ],
              )),
          Container(
              height: 70,
              width: 190,
              decoration: BoxDecoration(
                  color: const Color(0xff292929),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Image.asset(
                    'assets/destaques/destaque_5.png',
                    height: 100,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text('Melhores do\nSertanejo',
                      style:
                      TextStyle(color: Colors.white, fontSize: 18)),
                ],
              )),
        ],
      ),
    ]);
  }
}