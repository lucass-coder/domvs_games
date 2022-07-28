import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class GameVideo extends StatefulWidget {
  final String jogo;

  const GameVideo({Key? key, required this.jogo}) : super(key: key);

  @override
  GameVideoState createState() => GameVideoState();
}

class GameVideoState extends State<GameVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    _controller = VideoPlayerController.asset(
        'assets/videos/${widget.jogo.replaceAll(" ", "")}.mp4')
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            Navigator.pop(context);
            SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
          },
            child: VideoPlayer(_controller,
            )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
