import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:loja_flutter/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},
      ),
      title: 'Loja de Games Domvs',
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }
}
