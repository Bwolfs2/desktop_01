import 'dart:ui';

import 'package:flutter/material.dart';

class PlayerWidget extends StatefulWidget {
  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 8,
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.center,
            color: Colors.black.withOpacity(.4),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.santaportal.com.br/sistema/Arquivos/Fotos/202047185338g.jpg"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Avril Lavigne",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Girlfriend",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.skip_next,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "3:37",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: MediaQuery.of(context).size.width * .4,
                              height: 5,
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  color: Colors.blue[300].withOpacity(.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                width: 150,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              "5:03",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.volume_up,
                      color: Colors.white,
                      size: 15,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 100,
                      height: 5,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        width: 40,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
