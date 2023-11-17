import 'package:flutter/material.dart';

import '../module/main/model/musicas_model.dart';
import '../module/main/services/lista_musicas.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ouça Novamente", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
        SizedBox(height: 16),
        Container(
          height: 200, // Altura da lista horizontal
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: MusicaColumnRepository.music.length,
            itemBuilder: (context, index) {
              return MusicaItem(
                musica: MusicaColumnRepository.music[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class MusicaItem extends StatelessWidget {
  final MusicaColumn musica;

  MusicaItem({required this.musica});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            musica.image,
            width: 150, // Largura da imagem
            height: 150, // Altura da imagem
          ),
          SizedBox(height: 8),
          Text(
            musica.title,
            style: TextStyle(fontSize: 12, color: const Color(0xffD1D1D1),), // Tamanho do texto
          ),
        ],
      ),
    );
  }
}