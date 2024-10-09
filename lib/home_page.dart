import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<HomePage> {
  bool clicou = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          LottieBuilder.asset('assets/carro.json'),
          const SizedBox(height: 50),
          const CircularProgressIndicator(),
        ],
      ),
    ));
  }
}
