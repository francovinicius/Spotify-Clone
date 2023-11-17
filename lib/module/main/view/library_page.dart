import 'package:flutter/material.dart';
import 'package:spotify_clone/module/main/services/lista_musicas.dart';
import '../../../widgets/library_horizontal_list_view.dart';
import '../../../widgets/library_vertical_list_view.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xff121212),
    body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            const Text("Sua Biblioteca", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 30,),
            LibraryHorizontalListView(),
            const LibraryVerticalListView(),

          ],
        ),
      ),
    ));
  }
}


