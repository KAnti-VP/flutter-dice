import 'dart:math';

import 'package:flutter/material.dart';

Random randomize = Random();

class Roll extends StatefulWidget {
  const Roll({super.key});

  @override
  State<Roll> createState() {
    return _RollState();
  }
}

class _RollState extends State<Roll> {
  int dicenumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        dicenumber == 0
            ? Image.network(
                'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
                width: 300,
                height: 300,
              )
            : Image.asset(
                'assets/images/dice-$dicenumber.png',
                width: 300,
                height: 300,
              ),
        TextButton(
          onPressed: () {
            setState(() {
              dicenumber = randomize.nextInt(6) + 1;
            });
          },
          child: Text('Roll dice'),
        ),
      ],
    );
  }
}
