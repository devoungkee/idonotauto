import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.green,
        // border: Border.all(),
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Text('Please input the words you want.',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
      ),
    );
  }
}
