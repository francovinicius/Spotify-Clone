import 'package:flutter/material.dart';
import 'package:spotify_clone/module/main/view/search_page.dart';

import 'home_page.dart';
import 'library_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121212),
        body: PageView(
            controller: controller,
            onPageChanged: (pagina) {
              setState(() {
                posicaoPagina = pagina;
              });
            },
            children: const [
              HomePage(),
              SearchPage(),
              LibraryPage(),
            ]),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (pagina) {
              controller.jumpToPage(pagina);
            },
            currentIndex: posicaoPagina,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xff121212),
            selectedItemColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon:
                    Image.asset('assets/icons/home.png', width: 30, height: 30),
                label: '',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/search.png',
                    width: 30, height: 30),
                label: '',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon:
                    Image.asset('assets/icons/book.png', width: 30, height: 30),
                label: '',
                backgroundColor: Colors.blueGrey,
              ),
            ]),
      ),
    );
  }
}
