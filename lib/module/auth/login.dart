import 'package:flutter/material.dart';
import 'package:spotify_clone/module/auth/create_account.dart';
import 'package:spotify_clone/module/main/view/main_page.dart';

import '../../widgets/dados.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xff121212),
            body: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: 270,
                        width: double.infinity,
                        child: Image.asset('assets/auth/login.png')),
                    const SizedBox(
                      height: 150,
                    ),
                    const Dados(),
                    Container(
                      width: double.infinity,
                      height: 45,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1ED760),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        },
                        child: const Text(
                            "Acessar",
                            style: TextStyle(fontSize: 16, color: Colors.black)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateAccountPage()));
                      },
                      child: const Text(
                        "Ainda não possui conta? Cadastre-se",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 200,
          left: 110,
          child: Image.asset(
            'assets/icons/logo.png',
            height: 200,
            width: 200,
          ),
        ),
      ],
    );
  }
}

