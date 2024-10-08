import 'package:flutter/material.dart';

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
        child: InkWell(
          onTap: () {
            setState(() {
              clicou = !clicou;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 3000),
            curve: Curves.bounceOut,
            width: clicou ? 300 : 150,
            height: clicou ? 300 : 150,
            decoration: BoxDecoration(
              borderRadius: clicou
                  ? null
                  : const BorderRadius.all(
                      Radius.circular(75),
                    ),
              color: clicou ? Colors.blue : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
