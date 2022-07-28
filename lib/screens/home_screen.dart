import 'package:flutter/material.dart';
import 'package:loja_flutter/screens/detail_screen.dart';
import 'package:loja_flutter/screens/view_all_screen.dart';
import 'package:loja_flutter/widgets/game_box.dart';

import '../widgets/popular_games.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 16, right: 15, top: 30, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Seja Bem vindo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          Text("Lucas Santana",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                        ],
                      ),
                      SizedBox(width: 40),
                      Container(
                        alignment: Alignment.centerRight,
                          child: Row(
                            children: [
                              Image.asset('assets/images/icon_domvs.png',height: 52,),
                              SizedBox(width: 16),
                              CircleAvatar(
                                radius: 32,
                                backgroundImage: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/83018825?v=4'),
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                DefaultTabController(
                  length: 3,
                  child: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.red,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 3, color: Colors.red),
                      insets: EdgeInsets.only(right: 32, left: 14),
                    ),
                    tabs: [
                      Tab(
                        child: Text('Populares'),
                      ),
                      Tab(
                        child: Text('Novidades'),
                      ),
                      Tab(
                        child: Text('Melhores'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 376,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  imageUrl: 'assets/images/cyberpunkLogo.png',
                                  description: 'Cyberpunk 2077 é um jogo eletrônico de RPG de ação desenvolvido e publicado pela CD Projekt.',
                                ),
                              ),
                            );
                          },
                          child: PopularGamesWidget(
                            imageUrl: "assets/images/cyberpunk.png",
                            category: "Ação",
                            gameName: "Cyberpunk 2077",
                            price: "R\$ 59,99",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  imageUrl: 'assets/images/spiderman.png',
                                  description: 'Spider-Man: Miles Morales é um jogo eletrônico de ação-aventura desenvolvido pela Insomniac Games e publicado pela Sony Interactive Entertainment.',
                                ),
                              ),
                            );
                          },
                          child: PopularGamesWidget(
                            imageUrl: "assets/images/spiderman.png",
                            category: "Aventura",
                            gameName: "Spiderman",
                            price: "R\$ 67,99",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  imageUrl: 'assets/images/outrider3.png',
                                  description: 'Outriders é um videogame de ação cooperativa em terceira pessoa desenvolvido pela People Can Fly e publicado pela subsidiária europeia da Square Enix.',
                                ),
                              ),
                            );
                          },
                          child: PopularGamesWidget(
                            imageUrl: "assets/images/outrider3.png",
                            category: "Battle Royal",
                            gameName: "Outriders",
                            price: "R\$ 72,99",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  imageUrl: 'assets/images/valorantPortraint.png',
                                  description: 'Valorant é um jogo eletrônico multijogador gratuito para jogar de tiro em primeira pessoa desenvolvido e publicado pela Riot Games.',
                                ),
                              ),
                            );
                          },
                          child: PopularGamesWidget(
                            imageUrl: "assets/images/valorantPortraint.png",
                            category: "Battle Royal",
                            gameName: "Valorant",
                            price: "Grátis",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Meus jogos",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ViewAllScreen()));
                            },
                            child: Text(
                              "Ver todos",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 24,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          children: <Widget>[
                            GameBox(imageUrl: 'assets/images/infinite.png'),
                            SizedBox(width: 20),
                            GameBox(imageUrl: 'assets/images/outrider.png'),
                            SizedBox(width: 20),
                            GameBox(imageUrl: 'assets/images/valorantLandScape.png'),
                            SizedBox(width: 20),

                          ],
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

// GameBox(imageUrl: 'assets/images/infinite.png'),
// SizedBox(width: 20),
// GameBox(imageUrl: 'assets/images/outrider.png'),
// SizedBox(width: 20),
// GameBox(imageUrl: 'assets/images/valorantLandScape.png'),
// SizedBox(width: 20),
// GameBox(imageUrl: 'assets/images/infinite.png'),
// SizedBox(width: 20),
// GameBox(imageUrl: 'assets/images/outrider.png'),
// SizedBox(width: 20),
// GameBox(imageUrl: 'assets/images/valorantLandScape.png'),
