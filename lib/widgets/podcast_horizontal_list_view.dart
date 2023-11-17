import 'package:flutter/material.dart';

import '../module/main/model/musicas_model.dart';
import '../module/main/services/lista_musicas.dart';

class PodcastHorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Episódios para você", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
        const SizedBox(height: 16),
        Container(
          height: 200, // Altura da lista horizontal
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: MusicaColumnRepository.podcast.length,
            itemBuilder: (context, index) {
              return PodcastItem(
                Podcast: MusicaColumnRepository.podcast[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class PodcastItem extends StatelessWidget {
  final MusicaColumn Podcast;

  PodcastItem({required this.Podcast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            Podcast.image,
            width: 150, // Largura da imagem
            height: 150, // Altura da imagem
          ),
          const SizedBox(height: 8),
          Text(
            Podcast.title,
            style: const TextStyle(fontSize: 12, color: Color(0xffD1D1D1),), // Tamanho do texto
          ),
        ],
      ),
    );
  }
}