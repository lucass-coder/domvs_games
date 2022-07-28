import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String imageUrl;
  final String? platformUrl;
  final String description;

  DetailScreen(
      {Key? key,
      required this.imageUrl,
      this.platformUrl,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade800,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 440,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                          color: Colors.white, size: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32.0),
                      child: Center(
                        child: Image.asset(
                          imageUrl,
                          width: 320,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              Padding(
                padding: EdgeInsets.only(left: 24.0, right: 24.0),
                child: Image.asset(
                  'assets/images/platforms.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: ElevatedButton(
                  onPressed: () => showAlert(context),
                  child: Text('       Comprar       '),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.amberAccent),
                  ),
                ),
              )
            ],
          ),
        ),
    );

  }
}

void showAlert(BuildContext context)  {
    showDialog(
      barrierDismissible: false, // Impede que usuário clique fora
      context: context,
      builder: (context) => AlertDialog(
        title: Icon(Icons.bug_report,size: 40,),
        content: Text(
          "Você já resolveu aqueles BUGS no projeto para estar comprando jogo?",
          style: TextStyle(fontSize: 24),
        ),
        actions: [
          TextButton(
            onPressed: () {
              //simAlert(context).then((_) => Navigator.pop(context));
              Navigator.pop(context);
              simAlert(context);
            },
            child: Text('Sim'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Não'),
          ),
        ],
      ),
    );
}

void simAlert(BuildContext context)  {
  showDialog(
    barrierDismissible: false, // Impede que usuário clique fora
    context: context,
    builder: (context) => AlertDialog(
      title: Icon(Icons.hiking, size: 40,),
      content: Text(
        "Você sabe que não, então bora voltar para a sprint?!",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Ta ok né!'),
        ),
      ],
    ),
  );
}