import 'package:flutter/material.dart';
import 'package:youtube_ui/models/videoModels.dart';

import 'components/video_tiles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF282828),
      ),
      child: ListView(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 28,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 18,
                                child: Image(
                                  image:
                                      AssetImage("assets/youtube_shorts.png"),
                                ),
                              ),
                              Text(
                                "Shorts",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 1,
                      indent: 2,
                      endIndent: 8,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Column(
                      children: [
                        Row(
                          children: List.generate(
                            menus.length,
                            (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  activeIndex = index;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 8),
                                child: Container(
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: activeIndex == index
                                        ? Colors.grey[200]
                                        : Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: Colors.grey[200],
                                      width: 0.2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 6,
                                      horizontal: 8,
                                    ),
                                    child: Text(
                                      menus[index],
                                      style: TextStyle(
                                        color: activeIndex == index
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          VideoTiles(),
        ],
      ),
    );
  }
}
