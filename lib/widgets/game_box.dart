
import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {

  final String imageUrl;

  const GameBox({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 100,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.contain,
      ),
    );
  }
}

