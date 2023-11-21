import 'package:flutter/material.dart';
import '../../../widgets/destaques.dart';
import '../../../widgets/horizontal_list_view.dart';
import '../../../widgets/play_horizontal_list_view.dart';
import '../../../widgets/podcast_horizontal_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff121212),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Bom dia",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Destaques(),
                const SizedBox(
                  height: 50,
                ),
                HorizontalListView(),
                const SizedBox(height: 20,),
                PodcastHorizontalListView(),
                const SizedBox(height: 20,),
                PlayHorizontalListView(),
                const SizedBox(height: 90,)




              ],
            ),
          ),
        ),
      ),
    );
  }
}


