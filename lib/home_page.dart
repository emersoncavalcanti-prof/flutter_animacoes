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
      body: AnimatedAlign(
        duration: const Duration(seconds: 1),
        alignment: clicou ? Alignment.bottomLeft : Alignment.topRight,
        child: InkWell(
          onTap: () {
            setState(() {
              clicou = !clicou;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 3000),
            curve: Curves.bounceOut,
            width: clicou ? 150 : 75,
            height: clicou ? 150 : 75,
            decoration: BoxDecoration(
              borderRadius: clicou
                  ? null
                  : const BorderRadius.all(
                      Radius.circular(37.5),
                    ),
              color: clicou ? Colors.blue : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
