import 'package:flutter/material.dart';
import '../../widgets/dados.dart';
import '../main/view/main_page.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
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
                        onPressed: () {  },
                        child: const Text(
                            "Cadastrar",
                            style: TextStyle(fontSize: 16, color: Colors.black)
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
                      },
                      child: const Text(
                        "Já possui conta? Faça o Login.",
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
