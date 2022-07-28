import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loja_flutter/data/game_list.dart';

import 'game_video.dart';

class ViewAllScreen extends StatefulWidget {
  ViewAllScreen({Key? key}) : super(key: key);

  @override
  _ViewAllScreenState createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  final CarouselController _carouselController = CarouselController();
  int _indiceAtual = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // WEB
              //Center(child: Image.asset(jogos[_indiceAtual]['imagem'], fit: BoxFit.contain)),
              Image.asset(jogos[_indiceAtual]['imagem'], fit: BoxFit.contain),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black,
                      Colors.black,
                      Colors.black12,
                      Colors.black12,
                      Colors.black12,
                      Colors.black12,
                      Colors.black12,
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 500.0,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.65,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _indiceAtual = index;
                      });
                    },
                  ),
                  carouselController: _carouselController,
                  items: jogos.map((jogos) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 30),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(jogos['imagem'],
                                      fit: BoxFit.cover),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  jogos['titulo'],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  jogos['descricao'],
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.grey),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => GameVideo(
                                                  jogo: jogos['titulo'],
                                                ))).then((_) => setState(() {
                                      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
                                    }));
                                  },
                                  child: Text('       Jogar       '),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    overlayColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.amberAccent),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
