import 'package:flutter/material.dart';

import '../module/main/services/lista_musicas.dart';

class LibraryVerticalListView extends StatelessWidget {
  const LibraryVerticalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 500,
      child: ListView.builder(
          itemCount: MusicaColumnRepository.library.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    MusicaColumnRepository.library[index].image,
                    width: 100,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      MusicaColumnRepository.library[index].title,
                      style: const TextStyle(fontSize: 20, color: Colors.white,),
                    ),
                  ),
                ],
              ),

            );
          }),
    );
  }
}