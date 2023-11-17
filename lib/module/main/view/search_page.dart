import 'package:flutter/material.dart';
import '../../../widgets/cards_buscar_finished.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff121212),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text("Buscar", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Qual música está procurando?',
                    hintStyle: TextStyle(color: Color(0xff414141)),
                    fillColor: Color(0xffD9D9D9),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Navegar por todas as seções", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                CardsBuscarFinished(),
              ],
            ),
          ),
        ));
  }
}


