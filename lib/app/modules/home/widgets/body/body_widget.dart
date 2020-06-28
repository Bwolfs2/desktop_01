import 'dart:ui';

import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.santaportal.com.br/sistema/Arquivos/Fotos/202047185338g.jpg"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Listen now",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            itemCount: imagens.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,
              childAspectRatio: .75,
            ),
            itemBuilder: (_, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          imagens[index]["url"],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 10,
                            sigmaY: 8,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.blue.withOpacity(.2),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  imagens[index]["name"],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  imagens[index]["albun"],
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

var imagens = [
  {
    "url":
        "https://lastfm.freetls.fastly.net/i/u/500x500/5afab62c878542f69d5022427c39f79e.jpg",
    "name": "Avril Lavigne",
    "albun": "Girlfriend"
  },
  {
    "url":
        "https://i.pinimg.com/originals/56/54/ca/5654cae2bcd2a97e57b66f2bc054c433.gif",
    "name": "Avril Lavigne",
    "albun": "Lets Go"
  },
  {
    "url":
        "https://cdn.culturagenial.com/imagens/album-o-tempo-nao-para-cke.jpg",
    "name": "Cazuza",
    "albun": "O tempo não para"
  },
  {
    "url":
        "https://www.mercidisco.com.br/image/cache/data/cd-mamonas-800x800.jpg",
    "name": "Mamonas assassinas",
    "albun": "Opss"
  },
  {
    "url":
        "https://lastfm.freetls.fastly.net/i/u/500x500/5afab62c878542f69d5022427c39f79e.jpg",
    "name": "Avril Lavigne",
    "albun": "Girlfriend"
  },
  {
    "url":
        "https://i.pinimg.com/originals/56/54/ca/5654cae2bcd2a97e57b66f2bc054c433.gif",
    "name": "Avril Lavigne",
    "albun": "Lets Go"
  },
  {
    "url":
        "https://cdn.culturagenial.com/imagens/album-o-tempo-nao-para-cke.jpg",
    "name": "Cazuza",
    "albun": "O tempo não para"
  },
  {
    "url":
        "https://www.mercidisco.com.br/image/cache/data/cd-mamonas-800x800.jpg",
    "name": "Mamonas assassinas",
    "albun": "Opss"
  },
];
