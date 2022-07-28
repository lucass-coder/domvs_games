import 'package:flutter/material.dart';

class PopularGamesWidget extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String gameName;
  final String price;

  PopularGamesWidget({
    Key? key,
    required this.imageUrl,
    required this.category,
    required this.gameName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8, left: 16, right: 16),
          height: 260,
          width: 200,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 5),
          child: Text(
            category,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.red, fontSize: 18),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 5),
          child: Text(
            gameName,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white, fontSize: 22),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            price,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.white, fontSize: 22),
          ),
        ),
      ],
    );
  }
}