import 'package:flutter/material.dart';

class Admob extends StatelessWidget {
  const Admob({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.green,
          // border: Border.all(),
          borderRadius: BorderRadius.circular(3),
        ),
        child: const Text('Here is admob position.',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )
        ),
      ),
    );
  }
}
