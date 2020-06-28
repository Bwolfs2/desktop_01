import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'widgets/body/body_widget.dart';
import 'widgets/player/player_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black45,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(
                  color: Colors.white.withOpacity(.1),
                ),
              ),
            ),
          ),
          Container(
            child: Container(
              child: Row(
                children: [
                  Container(
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    color: Colors.white.withOpacity(.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(2),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SelectedItem(
                              selected: true,
                              title: "Listen now",
                            ),
                            SelectedItem(
                              selected: false,
                              title: "Browse",
                            ),
                            SelectedItem(
                              selected: false,
                              title: "Radio",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Text(
                                "Library",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SelectedItemIcon(
                              selected: false,
                              title: "Recents",
                              icon: Icons.access_time,
                            ),
                            SelectedItemIcon(
                              selected: false,
                              title: "Albuns",
                              icon: Icons.photo_album,
                            ),
                            SelectedItemIcon(
                              selected: false,
                              title: "Songs",
                              icon: Icons.music_note,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: Text(
                                "Playlists",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 8,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SelectedItemNB(
                              selected: false,
                              title: "Summer",
                            ),
                            SelectedItemNB(
                              selected: false,
                              title: "Smasher vol. III",
                            ),
                            SelectedItemNB(
                              selected: false,
                              title: "Vibes",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //Body
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(.1),
                      child: BodyWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(bottom: 30, left: 30, right: 30, child: PlayerWidget())
        ],
      ),
    );
  }
}

class SelectedItemIcon extends StatelessWidget {
  final bool selected;
  final String title;
  final IconData icon;

  const SelectedItemIcon({
    Key key,
    @required this.selected,
    @required this.title,
    @required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return selected
        ? Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.2),
              borderRadius: BorderRadius.circular(5),
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white.withOpacity(.5),
                  size: 12,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        : Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white.withOpacity(.6),
                  size: 14,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
  }
}

class SelectedItem extends StatelessWidget {
  final bool selected;
  final String title;
  const SelectedItem({
    Key key,
    @required this.selected,
    @required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return selected
        ? Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.2),
              borderRadius: BorderRadius.circular(5),
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
  }
}

class SelectedItemNB extends StatelessWidget {
  final bool selected;
  final String title;
  const SelectedItemNB({
    Key key,
    @required this.selected,
    @required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return selected
        ? Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.2),
              borderRadius: BorderRadius.circular(5),
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 10),
            ),
          );
  }
}
